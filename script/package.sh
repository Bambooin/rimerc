#!/usr/bin/env bash

releasePath=release

flavors=(fcitx fcitx5 ibus squirrel trime weasel)
schemas=(common easy_en luna_pinyin)

mkdir -p ${releasePath}

for flavor in ${flavors[*]}
do
  cp -arH ${flavor} ${releasePath}
  for schema in ${schemas[*]}
  do
    cp -ar ${schema}/* ${releasePath}/${flavor}
  done
done
