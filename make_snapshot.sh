#!/usr/bin/env sh
[ ! -d build ] || rm -rf build
VERSION=$(cat VERSION)
mkdir -p build/studio-help-$VERSION
rsync -av . build/studio-help-$VERSION --exclude build --exclude .git
( cd build/studio-help-$VERSION; bundle package )
( cd build/ ; tar jcvf ../studio-help-$VERSION.tar.bz2 studio-help-$VERSION )



