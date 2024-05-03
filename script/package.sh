#!/usr/bin/env bash

releasePath=release

if [ -z $1 ]; then
  flavors=(fcitx fcitx5 ibus squirrel trime weasel)
else
  flavors=($1)
fi

schemas=(common easy_en luna_pinyin)

mkdir -p ${releasePath}

licence='Copyleft.txt LICENSE README.md CHANGELOG.md'
cp -a ${licence} ${releasePath}

for flavor in ${flavors[*]}; do
  cp -a ${flavor} ${releasePath}
  for schema in ${schemas[*]}; do
    cp -a ${schema}/* ${releasePath}/${flavor}
  done
done
