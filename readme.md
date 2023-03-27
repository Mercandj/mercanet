# mercanet

[![version](https://img.shields.io/badge/version-1.00.00-607D8B.svg?style=flat-square&label=version)](https://github.com/Mercandj/mercanet/releases)
[![swift](https://img.shields.io/badge/swift-5-DE7240.svg?style=flat-square&label=swift)](https://www.apple.com/fr/swift/)
[![mac os](https://img.shields.io/badge/mac-13.2.1-407629.svg?style=flat-square&label=mac%20os)](https://www.apple.com/macos)

This is a menu bar app for Mac OS.

<a margin="20px 0 20px 40px" href="https://play.google.com/store/apps/details?id=com.mercandalli.android.browser">
	<img 
	    src="./screenshot/mercanet.webp" 
	    align="left"
	    width="150" />
</a>

<br /><br /><br /><br />

![mercanet_full_bar.webp](./screenshot/mercanet_full_bar.webp)

## If you trust me, the developer

#### How to run the app

- Download the latest zip
  version [from the latest release](https://github.com/Mercandj/mercanet/releases)
- Accept the Chrome warning about the fact the file is dangerous
- Unzip
- Right click (click with 2 fingers) on the `mercanet.app` file
- On the menu, click `Open`
- On the alert
  dialog `“mercanet.app” can’t be opened because Apple cannot check it for malicious software.`
  click `Ok`
- Enjoy the app on the Mac Menu bar

----

## If you do not trust me

Read the code.

#### How to run the app on my mac from sources

Copy past the following lines in a mac terminal

```shell
git clone https://github.com/Mercandj/mercanet.git # Get the sources
pushd mercanet # Change directory to the sources code
xcodebuild -scheme mercanet build CONFIGURATION_BUILD_DIR=./build -configuration Release # Build the app 
popd mercanet
cp ./mercanet/build/mercanet.app ./mercanet.app
rm -rf ./mercanet/build
open ./mercanet.app
```

#### How to build the app

- On macos, open the terminal
- Type the following command
- `git clone https://github.com/Mercandj/mercanet.git`
- `cd mercanet`
- `xcodebuild -scheme mercanet build CONFIGURATION_BUILD_DIR=./build -configuration Release`
- The app will be on `./build/mercanet.app`

#### How to run the app

- Follow steps `How to build the app`
- Then, on finder, double click on the `mercanet.app` or via the
  terminal `open ./build/mercanet.app`

----

## If you are me

#### How to make a new release of this repository

- Go to xcode and select the xcodeproj
- Select the target `mercanet[readme.md](readme.md)`
- Bump version and build
- Bump this readme label
- Commit `[Version] Bump to X.YY.ZZ`
-

Run `rm -rf ./build && xcodebuild -scheme mercanet build CONFIGURATION_BUILD_DIR=./build -configuration Release && pushd ./build && zip -r ./mercanet.zip ./mercanet.app ./mercanet.app.dSYM && popd`

- Make a github [release](https://github.com/Mercandj/mercanet/releases) with
  the `./build/mercanet.zip`

----

## Thanks to

This app is based on

- the [Up&Down](https://github.com/gjiazhe/Up-Down) app version 1.1
- the command line
  tool [nettop](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/nettop.1.html).