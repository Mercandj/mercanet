#!/usr/bin/env bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

pushd "$BASE_DIR" > /dev/null || exit

  rm -rf ./build
  xcodebuild -scheme mercanet build CONFIGURATION_BUILD_DIR=./build -configuration Release
  open ./build/mercanet.app

popd > /dev/null || exit
