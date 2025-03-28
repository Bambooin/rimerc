#!/usr/bin/env bash

releasePath=release

flavors=(fcitx fcitx5 ibus squirrel trime weasel)

assets='Copyleft.txt LICENSE README.md CHANGELOG.md'

version=$(git describe --tags --abbrev=0)

pushd ${releasePath}

for flavor in ${flavors[*]}; do
  zip -r rimerc-${flavor}-${version}.zip ${flavor} ${assets} -x "*/.*"
done

popd
