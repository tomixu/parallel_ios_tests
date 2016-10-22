require 'rubygems'
require 'bundler'
Bundler.require(:default)

$stdout.sync = true
$stderr.sync = true

task :default => 'test'
desc 'Execute tests in multiple simulators'
task :test do
  sh "set -o pipefail; xcodebuild -derivedDataPath ./build -scheme SampleApp -sdk iphonesimulator -workspace SampleApp.xcworkspace build-for-testing | xcpretty -c"
  sh "./fbxctest/bin/fbxctest run-tests -destination 'name=iPhone 6s' -appTest build/Build/Products/Debug-iphonesimulator/SampleApp.app/PlugIns/SampleAppTests.xctest:build/Build/Products/Debug-iphonesimulator/SampleApp.app/SampleApp"
end
