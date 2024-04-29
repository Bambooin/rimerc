#!/usr/bin/env bash

releasePath=release

if [ -z $1 ]; then
  flavors=(fcitx fcitx5 ibus squirrel trime weasel)
else
  flavors=($1)
fi

schemas=(common easy_en luna_pinyin)

mkdir -p ${releasePath}

licence='Copyleft.txt LICENSE README.md'
cp -rf ${licence} ${releasePath}

for flavor in ${flavors[*]}
do
  cp -rfH ${flavor} ${releasePath}
  for schema in ${schemas[*]}
  do
    cp -rf ${schema}/* ${releasePath}/${flavor}
  done
done
