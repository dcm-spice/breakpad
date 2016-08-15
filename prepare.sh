#!/bin/sh

git clone https://chromium.googlesource.com/breakpad/breakpad breakpad
pushd breakpad > /dev/null
  git checkout 0fc6d0c8dfbb6e4226fd79c622b701a62c901f14 -b 0.0.1
  rm -rf .git
popd > /dev/null

pushd breakpad/src/third_party > /dev/null
  git clone https://chromium.googlesource.com/linux-syscall-support lss
  cd lss
   git checkout 1549d20f6d3e7d66bb4e687c0ab9da42c2bff2ac -b 0.0.1
   rm -rf .git
  cd ..
popd > /dev/null

cp breakpad/android/google_breakpad/Android.mk .
