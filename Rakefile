require 'rubygems'
require 'bundler'
Bundler.require(:default)

$stdout.sync = true
$stderr.sync = true

task :default => 'test'
desc 'Execute tests in multiple simulators'
task :test do
  sh "set -o pipefail; xcodebuild -derivedDataPath '#{File.join(Dir.pwd, 'build')}' -scheme SampleApp -sdk iphonesimulator -workspace SampleApp.xcworkspace build-for-testing | xcpretty -c"
end
