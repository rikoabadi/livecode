#!/bin/sh
# This script is a wrapper to run config.py with Python 2.7
# as the build system (gyp) is not yet compatible with Python 3.
# Make sure python2 is in your PATH or update the command below.

PYTHON2=${PYTHON2:-python2}

export ANDROID_SDK=${ANDROID_SDK:-/opt/android-sdk}
export ANDROID_NDK=${ANDROID_NDK:-/opt/android-sdk/ndk/25.2.9519653}
export ANDROID_API_VERSION=${ANDROID_API_VERSION:-35}
export ANDROID_BUILD_TOOLS=${ANDROID_BUILD_TOOLS:-35.0.0}
export ANDROID_NDK_PLATFORM_VERSION=${ANDROID_NDK_PLATFORM_VERSION:-33}

exec "$PYTHON2" ./config.py "$@"
