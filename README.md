## Rimerc: rimer config

#### 介绍

Rimerc 是为了解决Rime新手及小白用户配置难题。

很多用户由于配置不正确或词库匮乏而无法把Rime作为日常工作的常用输入法。

整理和分享自己使用的配置，为其他小白用户解决配置难题，推广Rime的使用。

#### 特点

开箱即用，词库丰富，非常适合对配置不是很熟悉或不愿折腾配置文件的用户。

所有平台的配置文件都是经过自己日常使用和调整的，完全可以作为日常使用。

#### 使用方法

由于词库文件很大，经过压缩后才上传，需要自行解压。

解压请使用 [7-Zip](https://www.7-zip.org/) 工具，**解压密码统一为: rimerc**

总体步骤，**备份自己的配置文件**，把解压后的文件复制到相应的目录，重新部署即可。

#### 默认配置文件路径

- [Android](https://github.com/osfans/trime)
  - Trime: /storage/emulated/0/rime

- [Linux](https://github.com/rime/ibus-rime) (使用squirrel.7z)

  - IBus: ~/.config/ibus/rime
  - Fcitx: ~/.config/fcitx/rime

- [MacOS](https://github.com/rime/squirrel)

  - Squirrel: ~/Library/Rime

- [Windows](https://github.com/rime/weasel)

  - Weasel: %AppData%\Rime

#### 步骤

以 Android 平台为例 (Android 内存至少需要2G，不然可能部署失败)

1. 把自己配置文件目录rime，重命名为rimebackup
2. 新建一个空目录rime，复制tirme.7z里面的文件到该目录
3. 重新部署(**注意由于词库文件较大，需要部署一段时间，需耐心等待**)
4. 部署成功后，即可使用
5. 若是配置不符合预期，可以删除该文件夹，恢复自己的配置

#### 感谢

**所有词库和配置文件均从互联网上获取和整理，感谢分享词库和配置的各位Rimer**
- Rime: 感谢 [lotem](https://github.com/lotem) 提供的优秀输入法平台
- Trime 感谢 [osfans](https://github.com/osfans) 移植到 Android 平台所做的大量工作
- Squirrel: 主要参考 [scomper](https://github.com/scomper) 的[配置](https://github.com/scomper/Rime)文件 
- Rimer: 感谢所有使用和推广Rime输入法的Rimer

#### 如果配置对你有所帮助，欢迎推荐给其他用户
#### 让更多的人快速高效地享受 Rime 输入法 🎉🎉🎉
