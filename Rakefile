require 'rubygems'
require 'bundler'
Bundler.require(:default)

$stdout.sync = true
$stderr.sync = true

task :default => 'test'
desc 'Execute tests in multiple simulators'
task :test do
  sh "set -o pipefail; xcodebuild -derivedDataPath ./build -scheme SampleApp -sdk iphonesimulator -workspace SampleApp.xcworkspace build-for-testing | xcpretty -c"

  threads = []

  ['iPhone 6s', 'iPad Air'].each do |device|
    threads << Thread.new do
      sh "./fbxctest/bin/fbxctest run-tests -destination 'name=#{device}' -appTest build/Build/Products/Debug-iphonesimulator/SampleApp.app/PlugIns/SampleAppTests.xctest:build/Build/Products/Debug-iphonesimulator/SampleApp.app/SampleApp"
    end
  end

  threads.each do |thread|
    thread.join
  end
end
