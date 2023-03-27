#!/usr/bin/env bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd "$BASE_DIR" > /dev/null || exit

  rm -rf ./build
  xcodebuild -scheme mercanet build CONFIGURATION_BUILD_DIR=./build -configuration Release
  pushd ./build > /dev/null || exit
    zip -r ./mercanet.zip ./mercanet.app ./mercanet.app.dSYM
  popd > /dev/null || exit

popd > /dev/null || exit
