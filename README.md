# travis-ci actionscript-demo

[![Build Status](https://api.travis-ci.org/Larusso/travis-CI-actionscript-demo.svg?branch=flexmojos_4.0)](https://travis-ci.org/Larusso/travis-CI-actionscript-demo)

## About

A simple demo that demonstrates a way to unit test action scrip applications with [travis-ci](http://travis-ci.org)

The demo runs a osx travis environment to start the flash player. The flash player will be downloaded from the adobe website at runtime. See travis.yml for more information. All dependencies (flex sdk, flex unit) will be resolved by maven with [flex-mojos](http://code.google.com/p/flex-mojos/)

## Details

### Flex-Mojos 4.0 - [flexmojos_4.0](https://github.com/haysclark/travis-CI-actionscript-demo/tree/)

  * needed to compile FlexSDK 4.5
  * used FlexUnit 4.0
  * needs a Flash Player work around
  * aided by this Adobe tutorial - [Part 1](http://www.adobe.com/devnet/flex/articles/flex-maven-flexmojos-pt1.html), [Part 2](http://www.adobe.com/devnet/flex/articles/flex-maven-flexmojos-pt2.html)

## Authors

  * Manfred Endres
  * Hays Clark