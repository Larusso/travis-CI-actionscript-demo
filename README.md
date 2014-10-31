# travis-ci actionscript-demo

[![Build Status](https://api.travis-ci.org/Larusso/travis-CI-actionscript-demo.svg?branch=coverage)](https://travis-ci.org/Larusso/travis-CI-actionscript-demo)

## About

A simple demo that demonstrates generating AS3 code coverage reports with [travis-ci](http://travis-ci.org)

The demo builds the Code Coverage Reports for an AS3 project; however, the Demo does __NOT__ include how to transfer the reports from Travis. See _travis.yml_ and _pom.xml_ for more information. All dependencies (flex sdk, flex unit) will be resolved by maven with [flex-mojos](http://code.google.com/p/flex-mojos/)

## Details

### Flex-Mojos 4.0 generate Code Coverage

  * uses Cobertura

## Authors

  * Manfred Endres
  * Hays Clark