#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Provide at least one input method!"
  echo "Such as: $0 fcitx5"
  exit
fi

case $1 in
fcitx)
  RIME_CONFIG_PATH=~/.config/fcitx/rime
  ;;

fcitx5)
  RIME_CONFIG_PATH=~/.local/share/fcitx5/rime
  ;;

ibus)
  RIME_CONFIG_PATH=~/.config/ibus/rime
  ;;
*)
  echo "Invalid $1 input method"
  echo "Valid input method is fcitx, fcitx5 or ibus"
  exit
  ;;
esac

echo -e "Starting setup $1...\n"

EXTRACT=7z
INPUT_METHOD=$1
RIMERC=rimerc

# check if fcitx installed
if ! command -v ${INPUT_METHOD} &>/dev/null; then
  echo "${INPUT_METHOD} could not be found"
  echo "Please install ${INPUT_METHOD}-rime in your distro and try again!"
  exit
fi

# check if 7z installed
if ! command -v ${EXTRACT} &>/dev/null; then
  echo "${EXTRACT} could not be found"
  echo "Please install ${EXTRACT} in your distro and try again!"
  exit
fi

# extract
cd ${RIMERC}
TMP_DIR=$(mktemp -d -t ${RIMERC}-XXXX)
echo -e "\nExtracting archive ${INPUT_METHOD}.7z to ${TMP_DIR} ..."
7z e ${INPUT_METHOD}.7z -o${TMP_DIR} -primerc

# backup rime config
if [ -d ${RIME_CONFIG_PATH} ]; then
  BACKUP_PATH=$(dirname ${RIME_CONFIG_PATH})/unrime
  mv ${RIME_CONFIG_PATH} ${BACKUP_PATH}
  echo -e "Backup your rime config to ${BACKUP_PATH}\n"
fi

# copy yaml to config path
cd ${TMP_DIR}
mkdir -p ${RIME_CONFIG_PATH}
cp *.yaml ${RIME_CONFIG_PATH}

# remove tmp dir
rm -rf ${TMP_DIR}

# restart input method
echo "Waiting for ${INPUT_METHOD} restart and deploying..."
case ${INPUT_METHOD} in
fcitx | fcitx5)
  nohup ${INPUT_METHOD} -r >/dev/null 2>&1 &
  ;;

ibus)
  nohup ${INPUT_METHOD} restart >/dev/null 2>&1 &
  ;;
*)
  echo "Invalid ${INPUT_METHOD} input method"
  echo "Valid input method is ibus, fcitx or fcitx5"
  exit
  ;;
esac

echo -e "\nSetup rimerc successfully!"
