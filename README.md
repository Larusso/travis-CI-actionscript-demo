# travis-ci actionscript-demo

[![Build Status](https://api.travis-ci.org/Larusso/travis-CI-actionscript-demo.svg?branch=mockito-flex)](https://travis-ci.org/Larusso/travis-CI-actionscript-demo)

## About

A simple demo that demonstrates a way to unit test action scrip applications with [travis-ci](http://travis-ci.org)

The demo runs a osx travis environment to start the flash player. The flash player will be downloaded from the adobe website at runtime. See travis.yml for more information. All dependencies (flex sdk, flex unit) will be resolved by maven with [flex-mojos](http://code.google.com/p/flex-mojos/)

## Details

### Flex-Mojos 4.0 with FlexUnit 4.1 and Mockito-Flex 1.4.M5

  * needed to compile FlexSDK 4.5
  * uses FlexUnit 4.1
	* requires adding local Maven module
  * uses [Mockito-Flex](https://bitbucket.org/loomis/mockito-flex/wiki/Home) 1.4M5
	* requires adding local Mockito module
	* has AsUnit dependency
	* :warning: will error if attempting to Mock a class from the __Default Package__.

## Authors

  * Manfred Endres
  * Hays Clark