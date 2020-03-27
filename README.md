## Rimerc: rimer config

#### 让更多的人快速高效地享受 Rime 输入法带来的乐趣 🎉🎉🎉

#### 简介

Rimerc 是为了解决 Rime 新手及小白用户配置难题。

很多用户由于配置不正确或词库匮乏而无法把 Rime 作为日常工作的常用输入法。

整理和分享自己使用的配置，为其他小白用户解决配置难题，推广 Rime 的使用。

#### 特点

开箱即用，词库丰富，非常适合对配置不熟悉或不愿折腾配置文件的用户。

所有平台的配置文件均经过自己日常使用和整理调整，完全可以日常使用。

#### 使用方法

由于词库文件很大，经过压缩后才上传，需要自行解压。

解压请使用 [7-Zip](https://www.7-zip.org/) 工具，**解压密码统一为: rimerc**

总体步骤，**备份原配置文件**，拷贝新配置至相应目录，重新部署即可。

#### 默认配置路径

- [Android](https://github.com/osfans/trime)
  - Trime: /storage/emulated/0/rime

- [Linux](https://github.com/rime/ibus-rime) (使用 squirrel.7z)

  - IBus: ~/.config/ibus/rime
  - Fcitx: ~/.config/fcitx/rime

- [MacOS](https://github.com/rime/squirrel)

  - Squirrel: ~/Library/Rime

- [Windows](https://github.com/rime/weasel)

  - Weasel: %AppData%\Rime

#### 步骤

以 Android 平台为例 (Android 内存需大于 2G，部署前清除系统缓存)

1. 为了保留自己的配置文件，需要把 rime 重命名为 unrime
2. 新建一个空目录 rime，复制 tirme.7z 里面的文件到该目录
3. 进入应用，输入-->重置-->勾选所有选项
4. 重新部署(**由于词库文件很大，部署运行时间较长，请耐心等待**)
5. 部署完成后 build 目录里面生成各种 bin 文件即可认为部署成功
6. 进入系统设置启用并选择 Trime 输入法，即可享受 Rime 输入法
7. 若是配置不符合预期，可以删除 rime 目录，恢复自己的配置即可

#### 致谢

**所有词库和配置文件均从互联网上获取并精心整理、磨合**
- Rime: 感谢 [lotem](https://github.com/lotem) 提供的优秀输入法平台
- Trime 感谢 [osfans](https://github.com/osfans) 移植到 Android 平台所做的大量工作
- Squirrel: 主要参考 [scomper](https://github.com/scomper) 的[配置](https://github.com/scomper/Rime)文件 
- Rimer: **感谢所有使用、分享和推广 Rime 输入法的 Rimer**

#### 如果配置有所帮助，欢迎推荐给更多用户使用 🥳🥳🥳

