# rimerc: rimer's dictionary & config

**Enjoy the fantacy journey to the Rime input method easily and efficiently 🎉🎉🎉**

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![GitHub release](https://img.shields.io/github/release/Bambooin/rimerc.svg)](https://github.com/Bambooin/rimerc/releases)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)

[English](README.md) | [简体中文](README_sc.md)

## History

When first coming into the Rime input methods, seeking for their **privacy and security**, but encountered lots of obstacles

Lack of UI settings and steep learning curve are very unfriendly for nobies, very eager to have an out of box solution

Come up with the idea of sharing configuration to help Rime community use it easily and efficiently

## Privacy

Input method as a necessary daily used software, the data involved is extremely **sensitive and privacy**, but most of current commercial input methods abuse of user's data and privacy

For people who pay attention to personal privacy, it is urgent to have a safe input method.
Rime meets these requirements, but lack of dictionary and configuration is very difficult for begginer, so share rimerc with the community

## Introduction

Rimerc is designed to solve the headache of Rime begginer, by providing organized and constantly honed configuration

Lots of people cannot use Rime as an usual input method for daily work due to incorrect configuration or lack of dictionary

## Feature

- Out of box solution for Rime
- All variant of Rime are supported
- Daily usage for everyone
- Organized and polished constantly
- Suitable for nobies of Rime

## Usage

### Path

- Android
  - [Trime](https://github.com/osfans/trime): /sdcard/rime

- macOS
  - [Squirrel](https://github.com/rime/squirrel): ~/Library/Rime

- UN\*X
  - [Fcitx](https://github.com/fcitx/fcitx-rime): ~/.config/fcitx/rime
  - [Fcitx5](https://github.com/fcitx/fcitx5-rime): ~/.local/share/fcitx5/rime
  - [IBus](https://github.com/rime/ibus-rime): ~/.config/ibus/rime

- Windows
  - [Weasel](https://github.com/rime/weasel): %AppData%\Rime

### Script

Script mode is recommended, with automatic decompression, backup, and redeployment, more efficient

Linux, macOS, or other terminals with Bash are required to perform the following commands

1. Clone the repository and go to the folder

   ``` bash
   git clone https://github.com/Bambooin/rimerc.git
   cd rimerc
   ```

2. Prepare all relevant configuration and choose your the `$variant`: fcitx, fcitx5, ibus or squirrel
   ```
   ./rimerc.sh $variant
   ```

    After the step is completed, for Linux, the script automatically backs up the existing configuration and redeploy.
    For macOS and Windows platform, go to step 3

3. Redeploy manually is needed

### Manual

Prepare:

1. **Back up your configuration**, you can rename `rime` folder to `rime.old`
2. Download the [latest](https://github.com/Bambooin/rimerc/releases) version and unzip locally

Deployment:

3. Redeployment(**Please be patient as dictionary is large**)

   Once the deployment is complete, the `build` directory under the configuration path and a variety of `.bin` files to be considered successful

4. If there are any problems, try:
   - Clear the system cache (e.g. Android)
   - Restore default settings (e.g. Android: Go to app, **Configurations --> Reset --> Check all options**)

   Then go to (step 3)

Recover:

5. If the configuration does not meets your needs, you can delete the rime folder, and restore your original configuration

## Acknowledgments

**All dictionary and configuration are gathered from the Rime community and constantly organized**
- Rime: Thanks to the excellent work by [lotem](https://github.com/lotem)
- Trime: Thanks to [osfans](https://github.com/osfans) for hard work of Trime
- easy-en: [rime-easy-en](https://github.com/BlindingDark/rime-easy-en)
- Squirrel: [scomper](https://github.com/scomper/Rime)
- Rimer: **Thanks to all of you use, share and promote Rime**

**Thinking rimerc is helpful, thanks for spreading to Rime community🥳🥳🥳**
