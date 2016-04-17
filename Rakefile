require 'rubygems'
require 'bundler'
Bundler.require(:default)
require 'benchmark'

$stdout.sync = true
$stderr.sync = true

task :default => 'test'
task :test, [:specific_test] do |t, args|
  exit_code = 0

  args.with_defaults(:specific_test => :all)
  if args[:specific_test] != :all
    test_scope = args.extras.inject("-only #{args[:specific_test]}") do |tests, test|
      tests + ',' + test
    end
  else
    test_scope = nil
  end

  time = Benchmark.measure do
    xctool = File.join(Dir.pwd, 'xctool', 'xctool.sh')
    xctool = "#{xctool} -derivedDataPath '#{File.join(Dir.pwd, 'build')}' -scheme SampleApp -sdk iphonesimulator -workspace SampleApp.xcworkspace"

    # Destroy and create devices for given name, type and os version
    devices = [
      SimCtl.reset_device('SampleApp iPhone', SimCtl.devicetype(name: 'iPhone 5'),    SimCtl::Runtime.latest(:ios)),
      SimCtl.reset_device('SampleApp iPad',   SimCtl.devicetype(name: 'iPad Retina'), SimCtl::Runtime.latest(:ios)),
    ]
    devices.each { |device| device.launch! }

    # Build tests once
    sh "#{xctool} build-tests"

    threads = []

    # Run tests on each device in a separate thread
    devices.each do |device|
      threads << Thread.new do
        test_log = File.join(Dir.pwd, 'build', "#{device.name}.log")
        junit_xml = File.join(Dir.pwd, 'build', "#{device.name}.junit.xml")
        if test_scope
          system "#{xctool} run-tests #{test_scope} -destination 'id=#{device.udid}' -reporter plain:'#{test_log}' -reporter junit:'#{junit_xml}'"
        else
          system "#{xctool} run-tests -destination 'id=#{device.udid}' -reporter plain:'#{test_log}' -reporter junit:'#{junit_xml}'"
        end
        Thread.current[:result] = $?
        device.kill!
        device.wait! {|d| d.state == :shutdown}
        device.delete!
      end
    end

    # Wait for all threads to finish
    threads.each do |thread|
      thread.join
      exit_code |= thread[:result].to_i
    end
  end

  puts "Total time: #{time.real}s"

  exit exit_code
end
