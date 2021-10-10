# rimerc: rimer's dictionary & config

**让更多的人快速高效地享受 Rime 输入法带来的乐趣 🎉🎉🎉**

## 由来

最开始接触 Rime 平台输入法时，看中其**隐私安全性**，使用时却遇到很多问题

网上搜索解决方法和词库很费时且效率低下，非常渴望有开箱即用的配置文件

自己不断摸索的过程中萌生分享配置，帮助大家快速入手 Rime 输入法的想法

## 隐私

输入法作为日常使用的必备软件，涉及的数据极其**敏感和隐私**，目前商用输入法

大部分滥用用户数据，肆意侵犯用户隐私，所以对于注重个人隐私的用户，亟需

一款安全开源的输入法。Rime 输入法满足这些隐私需求，但却有词库匮乏，配置

困难等问题，所以把自己整理的配置分享给大家，让大家使用起来更加方便和便捷

## 简介

Rimerc 是为了解决 Rime 新手配置难题，提供自己整理和不断磨合的配置文件

很多用户由于配置不正确或词库匮乏而无法把 Rime 作为日常工作的常用输入法

整理和分享自己磨合的配置，为其他小白用户解决配置难题，推广 Rime 的使用

## 特点

- 开箱即用且词库丰富
- 全平台配置文件支持
- 完全可以作为日常使用
- 均经过自己整理和磨合
- 适合不熟悉配置的新手

## 用法

### 配置路径

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

### 脚本方式

推荐使用脚本方式，具有自动解压、备份和重新部署功能，更加高效快捷

需要 Linux、macOS 或其它具有 Bash 的终端执行下列命令

1. 克隆本仓库，进入文件夹

   ``` bash
   git clone https://github.com/Bambooin/rimerc.git
   cd rimerc
   ```

2. 准备所有相关的配置文件，将下列命令中的 `<variant>` 改为你将要使用的平台：fcitx, fcitx5, ibus, squirrel, trime 或 weasel

   ```
   ./rimerc.sh <variant>
   ```

   该步骤完成后，对于 Linux 和 macOS，脚本会自动备份已有配置文件，并部署新的配置文件。对于 Android 和 Windows 系统，需要进行步骤3

3. 对于 Android 和 Windows，需要手动将脚本生成的 `release/trime` 或 `release/weasel` 文件夹内的所有内容复制到相应平台的配置路径所在文件夹内（见上）


### 手动方式

准备：

1. **备份自己原有配置文件**，如将原配置文件夹 `rime` 重命名为 `rime.old`
2. 下载相应[最新版本](https://github.com/Bambooin/rimerc/releases)到相应目录，在本地解压

部署：

3. 重新部署(**由于词库文件很大，部署运行时间较长，请耐心等待**)

   部署完成后，配置路径下 `build` 目录里面生成各种 `*.bin` 文件即可认为部署成功
4. 若本配置文件使用过程出现任何问题，尝试：

   - 清除应用的系统缓存（如安卓系统）
   - 恢复默认设置（如安卓系统：进入应用，**输入配置-->恢复默认设置-->勾选所有选项**）

   后重新部署（步骤3）

恢复：

5. 若是配置不符合预期，可以删除 rime 目录，恢复自己的配置即可

## 致谢

**所有词库和配置文件均从互联网上获取并精心整理、磨合和改善**
- Rime: 感谢 [lotem](https://github.com/lotem) 提供的优秀输入法平台
- Trime: 感谢 [osfans](https://github.com/osfans) 移植到 Android 平台所做的大量工作
- easy-en: 主要参考 [rime-easy-en](https://github.com/BlindingDark/rime-easy-en) 的配置
- Squirrel: 主要参考 [scomper](https://github.com/scomper) 的[配置](https://github.com/scomper/Rime)文件 
- Rimer: **感谢所有使用、分享和推广 Rime 输入法的 Rimer**

**如果配置有所帮助，欢迎推荐给更多 Rime 爱好者和用户使用 🥳🥳🥳**
