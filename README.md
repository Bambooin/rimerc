### rimerc: rimer's dictionary & config

**让更多的人快速高效地享受 Rime 输入法带来的乐趣 🎉🎉🎉**

#### 由来

最开始接触 Rime 平台输入法时，看中其**隐私安全性**，使用时却遇到很多问题

网上搜索解决方法和词库很费时且效率低下，非常渴望有开箱即用的配置文件

自己不断摸索的过程中萌生分享配置，帮助大家快速入手 Rime 输入法的想法

#### 隐私

输入法作为日常使用的必备软件，涉及的数据极其**敏感和隐私**，目前商用输入法

大部分滥用用户数据，肆意侵犯用户隐私，所以对于注重个人隐私的用户，亟需

一款安全开源的输入法。Rime 输入法满足这些隐私需求，但却有词库匮乏，配置

困难等问题，所以把自己整理的配置分享给大家，让大家使用起来更加方便和便捷

#### 简介

Rimerc 是为了解决 Rime 新手配置难题，提供自己整理和不断磨合的配置文件

很多用户由于配置不正确或词库匮乏而无法把 Rime 作为日常工作的常用输入法

整理和分享自己磨合的配置，为其他小白用户解决配置难题，推广 Rime 的使用

#### 特点

- 开箱即用且词库丰富
- 全平台配置文件支持
- 完全可以作为日常使用
- 均经过自己整理和磨合
- 适合不熟悉配置的新手

#### 用法

由于词库文件巨大且均为文本数据，极易压缩，压缩以减少下载时间

**📢 解压密码统一为: rimerc**

请使用 [7-Zip](https://www.7-zip.org/) 抑或使用命令行进行解压

##### 脚本方式

推荐使用脚本方式，具有自动解压、备份和重新部署功能，更加高效快捷

 ``` bash
 # usage of rimerc
 git clone https://github.com/Bambooin/rimerc.git
 cd rimerc
 # pick one of your rime: fcitx, fcitx5, ibus or squirrel
 ./rimerc.sh fcitx5
 ```

##### 手动方式

1. **备份自己原有配置文件**
2. 解压新配置至相应目录
3. 重新部署即可流畅使用

##### 配置路径

- Android
  - [Trime](https://github.com/osfans/trime): /storage/emulated/0/rime

- macOS
  - [Squirrel](https://github.com/rime/squirrel): ~/Library/Rime

- UN*X
  - [Fcitx](https://github.com/fcitx/fcitx-rime): ~/.config/fcitx/rime
  - [Fcitx5](https://github.com/fcitx/fcitx5-rime): ~/.local/share/fcitx5/rime
  - [IBus](https://github.com/rime/ibus-rime): ~/.config/ibus/rime

- Windows
  - [Weasel](https://github.com/rime/weasel): %AppData%\Rime

##### 详细步骤

以 Android 平台为例 (Android 内存需大于 2G，部署前清除系统缓存)

1. 为了保留自己的配置文件，需要把 rime 重命名为 unrime
2. 新建一个空目录 rime，复制 tirme.7z 里面的文件到该目录
3. 进入应用，输入-->恢复默认设置-->勾选所有选项
4. 重新部署(**由于词库文件很大，部署运行时间较长，请耐心等待**)
5. 部署完成后 build 目录里面生成各种 bin 文件即可认为部署成功
6. 进入系统设置启用并选择 Trime 输入法，即可享受 Rime 输入法
7. 若是配置不符合预期，可以删除 rime 目录，恢复自己的配置即可

#### 致谢

**所有词库和配置文件均从互联网上获取并精心整理、磨合和改善**
- Rime: 感谢 [lotem](https://github.com/lotem) 提供的优秀输入法平台
- Trime 感谢 [osfans](https://github.com/osfans) 移植到 Android 平台所做的大量工作
- Squirrel: 主要参考 [scomper](https://github.com/scomper) 的[配置](https://github.com/scomper/Rime)文件 
- Rimer: **感谢所有使用、分享和推广 Rime 输入法的 Rimer**

**如果配置有所帮助，欢迎推荐给更多 Rime 爱好者和用户使用 🥳🥳🥳**
