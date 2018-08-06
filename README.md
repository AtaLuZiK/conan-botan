# conan-botan

Conan package for [Botan](https://github.com/randombit/botan)

The packages generated with this **conanfile** can be found on [here](https://bintray.com/zimmerk/conan).

## Package Status

| Bintray | Travis | Appveyor |
|---------|--------|----------|
|[ ![Download](https://api.bintray.com/packages/zimmerk/conan/botan%3Azimmerk/images/download.svg) ](https://bintray.com/zimmerk/conan/botan%3Azimmerk/_latestVersion)|[![Build Status](https://travis-ci.org/AtaLuZiK/conan-botan.svg?branch=release%2F2.7.0)](https://travis-ci.org/AtaLuZiK/conan-botan)|[![Build status](https://ci.appveyor.com/api/projects/status/db97td66dk5lmmom/branch/release/2.7.0?svg=true)](https://ci.appveyor.com/project/AtaLuZiK/conan-botan/branch/release/2.7.0)|

## Reuse the packages

### Basic setup

```
conan install botan/2.7.0@zimmerk/stable
```

### Project setup

```
[requires]
botan/2.7.0@zimmerk/stable

[options]
# Take a look for all avaliable options in conanfile.py

[generators]
cmake
```

Complete the installitation of requirements for your project running:

```
conan install .
```

Project setup installs the library (and all his dependencies) and generates the files conanbuildinfo.txt and conanbuildinfo.cmake with all the paths and variables that you need to link with your dependencies.

Follow the Conan getting started: http://docs.conan.io
