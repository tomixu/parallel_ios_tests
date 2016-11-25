# Running iOS tests on multiple simulators in parallel

[![Build Status](https://travis-ci.org/plu/parallel_ios_tests.svg?branch=master)](https://travis-ci.org/plu/parallel_ios_tests)

The old `xctool` based solution is deprecated. For a better solution, please have a look at these tools:

* [pxctest](https://github.com/plu/pxctest)
* [fbsimctl](https://github.com/facebook/FBSimulatorControl/tree/master/fbsimctl)
* [fbxctest](https://github.com/facebook/FBSimulatorControl/tree/master/fbxctest)

This example project here has been updated to use `pxctest`, to demonstrate how to run tests on multiple
iOS Simulators in parallel.

```ruby
$stdout.sync = true
$stderr.sync = true

task :default => 'test'
desc 'Execute tests in multiple simulators'
task :test do
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
```
