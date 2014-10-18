# Travis-CI ActionScript Demo

[![Build Status](https://travis-ci.org/Larusso/travis-CI-actionscript-demo.png?branch=master)](https://travis-ci.org/Larusso/travis-CI-actionscript-demo)

A simple demo that demonstrates a way to unit test [ActionScript](http://en.wikipedia.org/wiki/ActionScript) applications with [Travis CI](http://travis-ci.org)

## Gist
The demo utilizes OSX Travis worker.  The Flash Player will be downloaded from the Adobe website at runtime. All build dependencies (flex sdk, flex unit) will be resolved by [Maven](http://maven.apache.org/) with [flex-mojos](http://code.google.com/p/flex-mojos/)

## Usage
To run this script locally you will need a Mac, the OSX version should ideally match the [Travis OSX build environment](http://docs.travis-ci.com/user/osx-ci-environment).

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

### Flex-Mojos

 * [Flex-Mojos (Pre-Apache Flex)](http://code.google.com/p/flex-mojos/)
 * [Flex-Mojos (Post-Apache Flex)](https://flexmojos.atlassian.net/wiki/display/FLEXMOJOS/Home)
 * [Flex-Mojos Introduction](https://github.com/justinjmoses/flexmojos-introduction)
