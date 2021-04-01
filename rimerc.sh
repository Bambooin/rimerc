#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "Provide at least one input method!"
  echo "Such as: $0 fcitx5"
  exit
fi

VALID_RIME="fcitx, fcitx5, ibus or squirrel"
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

squirrel)
  RIME_CONFIG_PATH=~/Library/Rime
  ;;
*)
  echo "Invalid $1 input method"
  echo "Valid input method is ${VALID_RIME}"
  exit
  ;;
esac

echo -e "Starting setup $1...\n"

EXTRACT=7z
INPUT_METHOD=$1
RIMERC=rimerc

# check if input method installed
if [ $1 == squirrel ]; then
  if [ ! -d '/Library/Input Methods/Squirrel.app' ]; then
    echo "Please install ${INPUT_METHOD} in your macOS and try again!"
    exit
  fi
else
  if ! command -v ${INPUT_METHOD} &>/dev/null; then
    echo "${INPUT_METHOD} could not be found"
    echo "Please install ${INPUT_METHOD} in your distro and try again!"
    exit
  fi
fi

# check if 7z installed
if ! command -v ${EXTRACT} &>/dev/null; then
  echo "${EXTRACT} could not be found"
  echo "Please install ${EXTRACT} in your distro and try again!"
  exit
fi

# extract
TMP_DIR=$(mktemp -d -t ${RIMERC}-XXXX)
echo -e "Extracting archive ${INPUT_METHOD}.7z to ${TMP_DIR} ..."
7z e ${INPUT_METHOD}.7z -o${TMP_DIR} -primerc >/dev/null 2>&1

# backup rime config
if [ -d ${RIME_CONFIG_PATH} ]; then
  BACKUP_PATH=$(mktemp -p $(dirname ${RIME_CONFIG_PATH}) -d \
    -t ${RIMERC}-backup-$(date '+%Y%m%d')-XXXX)
  mv ${RIME_CONFIG_PATH}/* ${BACKUP_PATH}
  echo -e "\nBackup your rime config to ${BACKUP_PATH}"
fi

# copy yaml to config path
mkdir -p ${RIME_CONFIG_PATH}
cp ${TMP_DIR}/*.yaml ${RIME_CONFIG_PATH}

# remove tmp dir
rm -rf ${TMP_DIR}

# restart input method
echo -e "\nWaiting for ${INPUT_METHOD} restart and deploying..."
case ${INPUT_METHOD} in
fcitx | fcitx5)
  nohup ${INPUT_METHOD} -r >/dev/null 2>&1 &
  ;;

ibus)
  nohup ${INPUT_METHOD} restart >/dev/null 2>&1 &
  ;;

squirrel)
  RED='\033[0;31m'
  CLEAR='\033[0m'
  echo -e "${RED}Please deploy ${INPUT_METHOD} manually!${CLEAR}"
  ;;
*)
  echo "Invalid ${INPUT_METHOD} input method"
  echo "Valid input method is ${VALID_RIME}"
  exit
  ;;
esac

echo -e "\nSetup rimerc successfully!"
