# Ev4-Decrypt-Tool
一个用于解码 .ev4 格式文件的工具，该工具无需密钥即可将 .ev4 解码为 .mp4

## 文件说明

- ev4-decrypt-tool：解码工具文件
- batch-example.bat：批处理脚本样例

## 使用说明

### 1 单文件解码

命令行窗口打开ev4-decrypt-tool目录

![image-1](https://raw.githubusercontent.com/TheoLee4B/Ev4-Decrypt-Tool/main/images/image-1.png)

![image-2](https://raw.githubusercontent.com/TheoLee4B/Ev4-Decrypt-Tool/main/images/image-2.png)


在命令行窗口中输入 decrypt+空格 ，再将所需转码.ev4文件拖拽至命令行窗口，按下回车

![image-3](https://raw.githubusercontent.com/TheoLee4B/Ev4-Decrypt-Tool/main/images/image-3.png)

![image-4](https://raw.githubusercontent.com/TheoLee4B/Ev4-Decrypt-Tool/main/images/image-4.png)



### 2 批量解码

在.ev4文件所在目录下新建batch.bat脚本文件，代码参考如下：

```shell
@echo off
setlocal EnableDelayedExpansion
for /f %%i in ('"dir /a/s/b/on *.ev4"') do (
	cd C:\Users\DreamCatcher\Desktop\ev4-decrypt-tool    # 修改ev4-decrypt-tool所在路径
	start decrypt.exe %%i
	timeout /nobreak /t 3
)
```

![image-5](https://raw.githubusercontent.com/TheoLee4B/Ev4-Decrypt-Tool/main/images/image-5.png)


双击执行.bat脚本，batch.bat所在目录及子目录下的所有.ev4文件均成功解码

![image-6](https://raw.githubusercontent.com/TheoLee4B/Ev4-Decrypt-Tool/main/images/image-6.png)

![image-7](https://raw.githubusercontent.com/TheoLee4B/Ev4-Decrypt-Tool/main/images/image-7.png)
