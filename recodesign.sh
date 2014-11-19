#!/bin/sh

export CODESIGN_ALLOCATE="/Applications/Xcode.app/Contents/Developer/usr/bin/codesign_allocate"

unzip $2
cd "Payload"

APP_BUNDLE=$(ls)

codesign -fs $1 "$APP_BUNDLE"

cd ..

zip -r "$2-resigned.ipa" "Payload/"

rm -r "Payload"