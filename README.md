# hello_word

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 注意事项：
flutter项目无法下载jcenter、google等包配置，需要做以下修改：

1. 在项目的 android\build.gradle 里修改
``` bash
buildscript {
    // 其它代码
    repositories {
        // google()
        // jcenter()
        maven { url 'https://maven.aliyun.com/repository/google' }  
        maven { url 'https://maven.aliyun.com/repository/jcenter' }  
        maven { url 'http://maven.aliyun.com/nexus/content/groups/public' }
    }

    // 其它代码
}
```

以及

``` bash
allprojects {
    repositories {
        // google()
        // jcenter()
        maven { url 'https://maven.aliyun.com/repository/google' }  
        maven { url 'https://maven.aliyun.com/repository/jcenter' }  
        maven { url 'http://maven.aliyun.com/nexus/content/groups/public' }
    }
}
```

2. 修改Flutter SDK包下的flutter.gradle文件,这个目录要根据你的SDK存放的位置有所变化。例如：
``` bash
D:\flutter_sdk\packages\flutter_tools\gradle\flutter.gradle
```
打开并修改大概24行左右的：
``` bash
buildscript {
    repositories {
        // google()
        // jcenter()
        maven { url 'https://maven.aliyun.com/repository/google' }  
        maven { url 'https://maven.aliyun.com/repository/jcenter' }  
        maven { url 'http://maven.aliyun.com/nexus/content/groups/public' }
    }
    // 其它代码
}
```

## 模拟器调试问题

1. 使用mumu模拟器调试：
cmd当前目录切换到MuMu模拟器的安装目录(例如：E:\MuMu\emulator\nemu\vmonitor\bin)，目录里包含adb工具，名字叫adb_server，cmd里运行命令:
``` bash
adb_server connect 127.0.0.1:7555
```

运行调试时使用命令：
``` bash
flutter run --enable-software-rendering
```

2. 获取android_id命令：
``` bash
adb shell settings get secure android_id
```