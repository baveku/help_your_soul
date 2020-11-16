#!/bin/bash

echo ''
cd submodules/corelib
flutter pub get
flutter pub run build_runner build
cd ../../
