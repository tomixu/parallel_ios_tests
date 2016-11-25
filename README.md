# Running iOS tests on multiple simulators in parallel

[![Build Status](https://travis-ci.org/plu/parallel_ios_tests.svg?branch=master)](https://travis-ci.org/plu/parallel_ios_tests)

The old `xctool` based solution is deprecated. For a better solution, please have a look at these tools:

* [pxctest](https://github.com/plu/pxctest)
* [fbsimctl](https://github.com/facebook/FBSimulatorControl/tree/master/fbsimctl)
* [fbxctest](https://github.com/facebook/FBSimulatorControl/tree/master/fbxctest)

This example project here has been updated to use `pxctest`, to demonstrate how to run tests on multiple
iOS Simulators in parallel..
