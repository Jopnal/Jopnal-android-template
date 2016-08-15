This template project is to help new developers starting game development on Android, using the [Jopnal](https://github.com/Jopnal/Jopnal) engine.

## Prerequisites

In order to use this template, you'll need to have the following tools installed:

- [Android SDK](https://developer.android.com/studio/index.html)
  - With API level 18 (or greater) images installed
  - You don't need Android Studio necessarily, just the command line tools
- [Android NDK](https://developer.android.com/ndk/downloads/index.html) (r12b recommended)
- [Apache ANT](http://ant.apache.org/bindownload.cgi)

Once installed, add the following paths to your system PATH:
[*System path?*](http://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/)

- [Path to SDK]/tools
- [Path to SDK]/platform-tools
- [Path to ANT]/bin
- [Path to NDK]

## Build, install and run

First of all, make sure your device is connected and has USB debugging configured.
[*USB debugging?*](http://www.howtogeek.com/129728/how-to-access-the-developer-options-menu-and-enable-usb-debugging-on-android-4.2/)

**If you're developing on Windows**, you may simply double-click on build_install_run_ant.bat and the template will be automatically built and installed on your device.

If you're **not** using Windows, call the following commands using the terminal while the working directory is set to the template root:

```
android update project --target "android-18" --subprojects --path .
ndk-build
ant clean
ant debug
adb install -r bin/NativeActivity-debug.apk
adb -d shell am start -debug -a android.intent.action.MAIN -n net.example.jopnal/android.app.NativeActivity
```

After these steps you should see a rotating cube on the screen.

### Then what?

Well, that's up to you. You may find the template code in main.cpp, in the jni folder. For more examples, see the examples folder [here](https://github.com/Jopnal/Jopnal).
