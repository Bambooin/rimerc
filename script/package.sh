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
cp -r ${licence} ${releasePath}

for flavor in ${flavors[*]}
do
  cp -arH ${flavor} ${releasePath}
  for schema in ${schemas[*]}
  do
    cp -ar ${schema}/* ${releasePath}/${flavor}
  done
done
