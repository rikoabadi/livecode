#!/bin/bash
# Verify that the toolchain correctly targets API 35

export ANDROID_NDK=/opt/android-sdk/ndk/25.2.9519653
export TOOLCHAIN_BIN=$ANDROID_NDK/toolchains/llvm/prebuilt/linux-x86_64/bin

echo "Testing ARM64 targeting API 35..."
$TOOLCHAIN_BIN/aarch64-linux-android33-clang++ -target aarch64-linux-android35 -E -dM tests/android/test_api_targeting.cpp | grep ANDROID_MIN_SDK_VERSION

echo "Testing ARMv7 targeting API 35..."
$TOOLCHAIN_BIN/armv7a-linux-androideabi33-clang++ -target armv7a-linux-androideabi35 -E -dM tests/android/test_api_targeting.cpp | grep ANDROID_MIN_SDK_VERSION
