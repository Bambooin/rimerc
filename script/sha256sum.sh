#!/usr/bin/env bash

releasePath=release

pushd ${releasePath}

for zip in *.zip
do
  sha256sum ${zip} > ${zip}.sha256.txt
done

popd
