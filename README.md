# Running iOS tests on multiple Simulators in parallel

[![Build Status](https://travis-ci.org/plu/parallel_ios_tests.svg?branch=master)](https://travis-ci.org/plu/parallel_ios_tests)

The old [xctool](https://github.com/facebook/xctool) based solution is deprecated. This example project now uses **[pxctest](https://github.com/plu/pxctest)** to execute tests in parallel on multiple Simulators.

## pxctest

[pxctest](https://github.com/plu/pxctest) is a ready to use command line to execute tests on multiple Simulators in parallel on a single machine. It can be easily installed via Homebrew.

## Other tools and libraries

There are other tools and libraries that might also be interesting:

* [FBSimulatorControl](https://github.com/facebook/FBSimulatorControl) - a Mac OS X library for managing and manipulating iOS Simulators
* [fbsimctl](https://github.com/facebook/FBSimulatorControl/tree/master/fbsimctl) - command line interface to the FBSimulatorControl Framework
* [fbxctest](https://github.com/facebook/FBSimulatorControl/tree/master/fbxctest) - test runner for running iOS testing bundles for the iOS Simulator Platform
* [bluepill](https://github.com/linkedin/bluepill) - reliable iOS testing tool that runs UI tests using multiple simulators on a single machine

## Example

This repository contains an example project (using KIF for UI Testing) which uses [pxctest](https://github.com/plu/pxctest) to run the tests on an iPhone and iPad Simulator at the same time.

### Rakefile

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
