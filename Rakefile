require 'rubygems'
require 'bundler'
Bundler.require(:default)
require 'benchmark'

$stdout.sync = true
$stderr.sync = true

task :default => 'test'
desc 'Execute tests in multiple simulators'
task :test, [:specific_test] do |t, args|
  sh [
    'set -o pipefail;',
    'xcodebuild',
    '-IDEBuildLocationStyle=Custom',
    '-IDECustomBuildLocationType=Absolute',
    "-IDECustomBuildProductsPath='#{Dir.pwd}/build/Products'",
    '-scheme SampleApp',
    '-workspace SampleApp.xcworkspace',
    '-destination "platform=iOS Simulator,name=iPhone 5,OS=10.1"',
    'build-for-testing',
    '| xcpretty',
  ].join(' ')

  sh [
    'pxctest',
    'run-tests',
    '--destination "name=iPhone 5,os=iOS 9.3"',
    '--destination "name=iPad Retina,os=iOS 9.3"',
    '--testrun build/Products/SampleApp_iphonesimulator10.1-i386.xctestrun',
  ].join(' ')
end
