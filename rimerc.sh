#!/usr/bin/env bash

RELEASE_PATH=release

if [ -z $1 ]; then
  echo "Provide at least one input method!"
  echo "Such as: $0 fcitx5"
  exit
fi

VALID_RIME="fcitx, fcitx5, ibus, squirrel, trime or weasel"
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

trime | weasel)
  case $1 in
  weasel)
  RIME_CONFIG_PATH=%AppData%\Rime
  ;;
  
  trime)
  RIME_CONFIG_PATH=/sdcard/rime
  ;;
  esac

  # package flavor
  ./script/package.sh $1
  echo "Please install $1 manually"
  echo "Copy ${RELEASE_PATH}/$1 to your rime $1 ${RIME_CONFIG_PATH} and deploy"
  exit
  ;;

*)
  echo "Invalid $1 input method"
  echo "Valid input method is ${VALID_RIME}"
  exit
  ;;
esac

echo -e "Starting setup $1...\n"

INPUT_METHOD=$1
RIMERC=rimerc

# package flavor
./script/package.sh $1

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

# backup rime config
if [ -d ${RIME_CONFIG_PATH} ]; then
  BACKUP_PATH=$(mktemp -p $(dirname ${RIME_CONFIG_PATH}) -d \
    -t ${RIMERC}-backup-$(date '+%Y%m%d')-XXXX)
  mv ${RIME_CONFIG_PATH}/* ${BACKUP_PATH}
  echo -e "\nBackup your rime config to ${BACKUP_PATH}"
fi

# copy config to config path
mkdir -p ${RIME_CONFIG_PATH}
cp -ra ${RELEASE_PATH}/${INPUT_METHOD}/* ${RIME_CONFIG_PATH}

# copy userdb to config path
cp -ra ${BACKUP_PATH}/*.userdb ${RIME_CONFIG_PATH}

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
