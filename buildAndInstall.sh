#!/bin/bash
set -x;
set -e;
./gradlew  build
apksigner sign --ks-pass pass:123123 --ks my-release-key.keystore ./app/build/outputs/apk/latest/release/app-latest-release-unsigned.apk
adb install  ./app/build/outputs/apk/latest/release/app-latest-release-unsigned.apk
