# mercanet

[![version](https://img.shields.io/badge/version-1.00.00-607D8B.svg?style=flat-square&label=version)](https://github.com/Mercandj/mercanet/releases)
[![swift](https://img.shields.io/badge/swift-5-DE7240.svg?style=flat-square&label=swift)](https://www.apple.com/fr/swift/)
[![mac os](https://img.shields.io/badge/mac-13.2.1-407629.svg?style=flat-square&label=mac%20os)](https://www.apple.com/macos)

## 1. Description

This is a menu bar app for Mac OS. Monitor the download and upload speeds in `KB/s`, `MB/s`, `GB/s`.

<a margin="20px 0 20px 40px" href="https://play.google.com/store/apps/details?id=com.mercandalli.android.browser">
	<img 
	    src="./screenshot/mercanet.webp" 
	    align="left"
	    width="150" />
</a>

<br /><br /><br /><br />

![mercanet_full_bar.webp](./screenshot/mercanet_full_bar.webp)

----

## 2. How to run the app

### 2.a. If you trust the app developer

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

### 2.b. If you do not trust the app developer

- Read the code and the script
- Be sure to have xcode installed and `xcodebuild` available on your terminal
- Once you are confident, copy and paste the following lines in a mac terminal

```shell
git clone https://github.com/Mercandj/mercanet.git # Get the sources
pushd mercanet # Change directory to mercanet
chmod 755 ./run.sh # Grant permission to the script
./run.sh # Run the script to compile and open the .app file
popd # Go back to original folder
```

----

## 3. How to make a new release of this repository

- Go to xcode and select the xcodeproj
- Select the target `mercanet[readme.md][publish.sh](publish.sh)(readme.md[publish.sh](publish.sh))`
- Bump version and build
- Bump this readme label
- Commit `[Version] Bump to X.YY.ZZ`
- Run `./publish.sh`
- Make a github [release](https://github.com/Mercandj/mercanet/releases) with
  the `./build/mercanet.zip`

----

## 4. Thanks to

- This is a recompilation of this app [Up&Down](https://github.com/gjiazhe/Up-Down) version 1.1.
    - Change from swift 3.0 to 5.0
    - Increase the refresh rate from 2s to 0.5s
    - Remove the auto-restart feature
- This app is based on the command line
  tool [nettop](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/nettop.1.html).