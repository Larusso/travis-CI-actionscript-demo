# Travis-CI ActionScript Demo

[![Build Status](https://api.travis-ci.org/Larusso/travis-CI-actionscript-demo.svg?branch=asdoc)](https://travis-ci.org/Larusso/travis-CI-actionscript-demo)

The demo builds the Documentation for a AS3 project; however, the Demo does __NOT__ include how to transfer the docs from [Travis CI](http://travis-ci.org)

## About
The demo utilizes OSX Travis worker.  A specified [Flash Player](http://www.adobe.com/products/flashplayer.html) will be downloaded from the Adobe website at runtime. All build dependencies (flex sdk, flex unit, etc) will be resolved by [Maven](http://maven.apache.org/) and the [flex-mojos](http://code.google.com/p/flex-mojos/) plug-in.

## Example Details

### Flex-Mojos 4.0 with FlexUnit 4.0 to compile AsDocs

  * uses FlexSDK 4.5
  * uses FlexUnit 4.0

:blue_book: See _travis.ci_ and _pom.xml_ files for setup details.

## Local Usage
To run this script locally you will need a Mac, the OSX version should ideally match the [Travis OSX build environment](http://docs.travis-ci.com/user/osx-ci-environment).

Clone the GitHub repo. Pull the Tags, and checkout the example you want.

Get Maven (if you don't have it already).

```
brew install maven
```

Download a _Debug Flash Player_ via **getFpFromArchive** script from the [list of Adobe Archives](http://helpx.adobe.com/flash-player/kb/archived-flash-player-versions.html).  
(This 
player is only used when running Maven and will not alter your computers setup.)

```
sh getFpFromArchive 'http://download.macromedia.com/pub/flashplayer/installers/archive/fp_11.7.700.225_archive.zip'
```

Run Maven **test**.  
(the _flashplayer_ environemnt variable is set which is used in the _pom.xml_ file.

```
mvn test -DflashPlayer.command=Flash\ Player\ Debugger.app/Contents/MacOS/Flash\ Player\ Debugger
```

## Resources

 * [Flex-Mojos (Pre-Apache Flex)](http://code.google.com/p/flex-mojos/)
 * [Flex-Mojos Introduction](https://github.com/justinjmoses/flexmojos-introduction)

## Authors

 * Manfred Endres
 * Hays Clark
 