Title
===
Abstract:xxx
## Papar Information
- Title:  `paper name`
- Authors:  `A`,`B`,`C`
- Preprint: [https://arxiv.org/abs/xx]()
- Full-preprint: [paper position]()
- Video: [video position]()

## Install & Dependence
- python
- pytorch
- numpy

## Dataset Preparation
| Dataset | Download |
| ---     | ---   |
| dataset-A | [download]() |
| dataset-B | [download]() |
| dataset-C | [download]() |

## Use
- for train
  ```
  python train.py
  ```
- for test
  ```
  python test.py
  ```
## Pretrained model
| Model | Download |
| ---     | ---   |
| Model-1 | [download]() |
| Model-2 | [download]() |
| Model-3 | [download]() |


## Directory Hierarchy
```
|—— sharqia
|    |—— .gitignore
|    |—— .metadata
|    |—— README.md
|    |—— analysis_options.yaml
|    |—— android
|        |—— .gitignore
|        |—— app
|            |—— build.gradle
|            |—— src
|                |—— debug
|                    |—— AndroidManifest.xml
|                |—— main
|                    |—— AndroidManifest.xml
|                    |—— kotlin
|                        |—— com
|                            |—— example
|                                |—— sharqia
|                                    |—— MainActivity.kt
|                    |—— res
|                        |—— drawable
|                            |—— launch_background.xml
|                        |—— drawable-v21
|                            |—— launch_background.xml
|                        |—— mipmap-hdpi
|                            |—— ic_launcher.png
|                            |—— launcher_icon.png
|                        |—— mipmap-mdpi
|                            |—— ic_launcher.png
|                            |—— launcher_icon.png
|                        |—— mipmap-xhdpi
|                            |—— ic_launcher.png
|                            |—— launcher_icon.png
|                        |—— mipmap-xxhdpi
|                            |—— ic_launcher.png
|                            |—— launcher_icon.png
|                        |—— mipmap-xxxhdpi
|                            |—— ic_launcher.png
|                            |—— launcher_icon.png
|                        |—— values
|                            |—— styles.xml
|                        |—— values-night
|                            |—— styles.xml
|                |—— profile
|                    |—— AndroidManifest.xml
|        |—— build.gradle
|        |—— gradle
|            |—— wrapper
|                |—— gradle-wrapper.properties
|        |—— gradle.properties
|        |—— settings.gradle
|    |—— fonts
|        |—— خط ايفون اصلي عريض.otf
|        |—— خط ايفون عريض عادي اصلي.otf
|        |—— خط ايفون عريض متوسط اصلي.otf
|    |—— images
|        |—— mo.jpg
|        |—— sharqiaLogo.png
|        |—— أفضل-الأماكن-السياحية-في-مصر-2023.jpg
|        |—— أهرامات-الجيزة-بالقاهرة-الكبرى.jpg
|        |—— السياحة-النيلية-بأسوان.jpg
|        |—— الغردقة.jpg
|        |—— المعابد-الفرعونية.jpg
|        |—— سياحة-الغوص-في-مصر.jpg
|        |—— صورة-من-الأعلى-لوسط-القاهرة.jpg
|        |—— معبد-أبو-سمبل-بأسوان.jpg
|        |—— معبد-الدير-البحري-معبد-الملكة-حتشبسوت-بالأقصر-1.jpg
|        |—— معبد-حتشبسوت-ليلًا.jpg
|        |—— منطقة-وسط-البلد-القاهرة.jpg
|        |—— نهر-النيل-بالقاهرة.jpg
|    |—— ios
|        |—— .gitignore
|        |—— Flutter
|            |—— AppFrameworkInfo.plist
|            |—— Debug.xcconfig
|            |—— Release.xcconfig
|        |—— Runner
|            |—— AppDelegate.swift
|            |—— Assets.xcassets
|                |—— AppIcon.appiconset
|                    |—— Contents.json
|                    |—— Icon-App-1024x1024@1x.png
|                    |—— Icon-App-20x20@1x.png
|                    |—— Icon-App-20x20@2x.png
|                    |—— Icon-App-20x20@3x.png
|                    |—— Icon-App-29x29@1x.png
|                    |—— Icon-App-29x29@2x.png
|                    |—— Icon-App-29x29@3x.png
|                    |—— Icon-App-40x40@1x.png
|                    |—— Icon-App-40x40@2x.png
|                    |—— Icon-App-40x40@3x.png
|                    |—— Icon-App-50x50@1x.png
|                    |—— Icon-App-50x50@2x.png
|                    |—— Icon-App-57x57@1x.png
|                    |—— Icon-App-57x57@2x.png
|                    |—— Icon-App-60x60@2x.png
|                    |—— Icon-App-60x60@3x.png
|                    |—— Icon-App-72x72@1x.png
|                    |—— Icon-App-72x72@2x.png
|                    |—— Icon-App-76x76@1x.png
|                    |—— Icon-App-76x76@2x.png
|                    |—— Icon-App-83.5x83.5@2x.png
|                |—— LaunchImage.imageset
|                    |—— Contents.json
|                    |—— LaunchImage.png
|                    |—— LaunchImage@2x.png
|                    |—— LaunchImage@3x.png
|                    |—— README.md
|            |—— Base.lproj
|                |—— LaunchScreen.storyboard
|                |—— Main.storyboard
|            |—— Info.plist
|            |—— Runner-Bridging-Header.h
|        |—— Runner.xcodeproj
|            |—— project.pbxproj
|            |—— project.xcworkspace
|                |—— contents.xcworkspacedata
|                |—— xcshareddata
|                    |—— IDEWorkspaceChecks.plist
|                    |—— WorkspaceSettings.xcsettings
|            |—— xcshareddata
|                |—— xcschemes
|                    |—— Runner.xcscheme
|        |—— Runner.xcworkspace
|            |—— contents.xcworkspacedata
|            |—— xcshareddata
|                |—— IDEWorkspaceChecks.plist
|                |—— WorkspaceSettings.xcsettings
|        |—— RunnerTests
|            |—— RunnerTests.swift
|    |—— lib
|        |—— Activites
|            |—— busstation.dart
|            |—— caffe.dart
|            |—— clothes.dart
|            |—— favorite.dart
|            |—— garden.dart
|            |—— gym.dart
|            |—— locations.dart
|            |—— resturant.dart
|            |—— shoppingmall.dart
|            |—— takeaway.dart
|            |—— taxi.dart
|            |—— trainstation.dart
|        |—— ForgetPassword.dart
|        |—— Login.dart
|        |—— SignUp.dart
|        |—— homePage.dart
|        |—— main.dart
|        |—— messages.dart
|        |—— personalAcc
|            |—— events.dart
|            |—— personalAcc.dart
|            |—— settings.dart
|            |—— support.dart
|        |—— test.dart
|    |—— linux
|        |—— .gitignore
|        |—— CMakeLists.txt
|        |—— flutter
|            |—— CMakeLists.txt
|            |—— generated_plugin_registrant.cc
|            |—— generated_plugin_registrant.h
|            |—— generated_plugins.cmake
|        |—— main.cc
|        |—— my_application.cc
|        |—— my_application.h
|    |—— macos
|        |—— .gitignore
|        |—— Flutter
|            |—— Flutter-Debug.xcconfig
|            |—— Flutter-Release.xcconfig
|            |—— GeneratedPluginRegistrant.swift
|        |—— Runner
|            |—— AppDelegate.swift
|            |—— Assets.xcassets
|                |—— AppIcon.appiconset
|                    |—— Contents.json
|                    |—— app_icon_1024.png
|                    |—— app_icon_128.png
|                    |—— app_icon_16.png
|                    |—— app_icon_256.png
|                    |—— app_icon_32.png
|                    |—— app_icon_512.png
|                    |—— app_icon_64.png
|            |—— Base.lproj
|                |—— MainMenu.xib
|            |—— Configs
|                |—— AppInfo.xcconfig
|                |—— Debug.xcconfig
|                |—— Release.xcconfig
|                |—— Warnings.xcconfig
|            |—— DebugProfile.entitlements
|            |—— Info.plist
|            |—— MainFlutterWindow.swift
|            |—— Release.entitlements
|        |—— Runner.xcodeproj
|            |—— project.pbxproj
|            |—— project.xcworkspace
|                |—— xcshareddata
|                    |—— IDEWorkspaceChecks.plist
|            |—— xcshareddata
|                |—— xcschemes
|                    |—— Runner.xcscheme
|        |—— Runner.xcworkspace
|            |—— contents.xcworkspacedata
|            |—— xcshareddata
|                |—— IDEWorkspaceChecks.plist
|        |—— RunnerTests
|            |—— RunnerTests.swift
|    |—— pubspec.lock
|    |—— pubspec.yaml
|    |—— test
|        |—— widget_test.dart
|    |—— web
|        |—— favicon.png
|        |—— icons
|            |—— Icon-192.png
|            |—— Icon-512.png
|            |—— Icon-maskable-192.png
|            |—— Icon-maskable-512.png
|        |—— index.html
|        |—— manifest.json
|    |—— windows
|        |—— .gitignore
|        |—— CMakeLists.txt
|        |—— flutter
|            |—— CMakeLists.txt
|            |—— generated_plugin_registrant.cc
|            |—— generated_plugin_registrant.h
|            |—— generated_plugins.cmake
|        |—— runner
|            |—— CMakeLists.txt
|            |—— Runner.rc
|            |—— flutter_window.cpp
|            |—— flutter_window.h
|            |—— main.cpp
|            |—— resource.h
|            |—— resources
|                |—— app_icon.ico
|            |—— runner.exe.manifest
|            |—— utils.cpp
|            |—— utils.h
|            |—— win32_window.cpp
|            |—— win32_window.h
```
## Code Details
### Tested Platform
- software
  ```
  OS: Debian unstable (May 2021), Ubuntu LTS
  Python: 3.8.5 (anaconda)
  PyTorch: 1.7.1, 1.8.1
  ```
- hardware
  ```
  CPU: Intel Xeon 6226R
  GPU: Nvidia RTX3090 (24GB)
  ```
### Hyper parameters
```
```
## References
- [paper-1]()
- [paper-2]()
- [code-1](https://github.com)
- [code-2](https://github.com)
  
## License

## Citing
If you use xxx,please use the following BibTeX entry.
```
```
