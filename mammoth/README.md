# Mammoth: GUI Environment

## 1. Overview
This app receives data from the collector server, visualizes it, and shows it to users.

## 2. Installation
Just download and execute our app.
* Android: .apk file
* IOS: .ipa file
* Windows: .exe file

## 3. Environment
**Built with flutter >=2.12.0**
Flutter packages
```
dependencies:
  cupertino_icons: ^1.0.2
  adobe_xd: ^2.0.0+1
  provider: ^5.0.0
  fl_chart: ^0.36.3
  http: ^0.13.3
  mongo_dart: ^0.7.1
  dbcrypt: ^2.0.0
  webview_flutter: ^2.0.12
  ```
  
  ## 4. Directory structure
```
lib
│  conf.dart
│  main.dart
│
└─src
    ├─mongo
    │      mongo.dart
    │
    ├─provider
    │      influx_provider.dart
    │      mongo_provider.dart
    │      screen_provider.dart
    │
    └─ui
            applications.dart
            button_frame.dart
            hdfs.dart
            hdfs_web.dart
            home.dart
            home_disconnected.dart
            main_screen.dart
            overview.dart
            page_title.dart
            resources.dart
            settings.dart
            sidebar.dart
            sign_in.dart
            sign_in_detail.dart
            sign_up_detail.dart
