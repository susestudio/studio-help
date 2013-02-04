#!/usr/bin/env sh
[ ! -d build ] || rm -rf build
git clean -x -f
VERSION=$(cat VERSION)
sed -e "s/#VERSION#/$VERSION/g" studio-help.spec.in > studio-help.spec
mkdir -p build/studio-help-$VERSION
rsync -av . build/studio-help-$VERSION --exclude build --exclude .git
( cd build/studio-help-$VERSION; bundle package )
( cd build/ ; tar jcvf ../studio-help-$VERSION.tar.bz2 studio-help-$VERSION )
git tag v$VERSION
git push --tags



