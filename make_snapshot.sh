#!/usr/bin/env sh
[ ! -d build ] || rm -rf build
if [ -f VERSION ];then
  VERSION=$(cat VERSION)
else
  VERSION=date +%Y%m%d.%H%M%S.0
fi
sed -e "s/#VERSION#/$VERSION/g" studio-help.spec.in > studio-help.spec
mkdir -p build/studio-help-$VERSION
rsync -av . build/studio-help-$VERSION --exclude build --exclude .git
( cd build/studio-help-$VERSION; bundle package )
( cd build/ ; tar jcvf ../studio-help-$VERSION.tar.bz2 studio-help-$VERSION )
if [ -f VERSION ];then
  git tag v$VERSION
  git push --tags
fi

