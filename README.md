This repo is the code from Natalie Masse Hooper's tutorial: "How to write an integration test in Flutter" detailed at
[http://cogitas.net/write-integration-test-flutter/](http://cogitas.net/write-integration-test-flutter/).

Integration tests, as Flutter would have it, are UI-clicking tests that are a high-confidence test of
your solution in an emulator. Once running they are fast enough, but to get there they take a little
while to launch the SUT in QEMU.

## Installing Flutter's bits and pieces:

Unfortunately, there's no Homebrew install for Flutter, so you have to follow the instructions
[here](https://flutter.io/get-started/install/)

## The app.

There's two effective tabs showing a simple list: a few products and stores. You can tap on products
and stores to change that view:

![flutterpic](https://user-images.githubusercontent.com/82182/44263142-2fbfef00-a1f4-11e8-94c3-dd2e06ce1cdd.png)

## Running the FlutterDriver tests

```
flutter drive --target=test_driver/list_content.dart
```

If that complains about there being no emulator, try `flutter emulators` and following its
instructions, then trying the above again.

For example, `flutter emulators --launch Galaxy_Nexus_API_27` brought up QEMU with an Android
emulator for me. That in itself took a few minutes first time for me.

Back to Natalie's tests. There are three in `test_driver/list_content_test.dart`:

1. Verify empty list message is shown
2. Tap show stores button, verify stores shown
3. Tap show products button, verify products shown

Those tests are just looking for element presence in the page/view, as well as element absence.

## Experience report.

Well. Flutter driving sequencing the build, making an APK, deploying that to an emulated to device
in QEMU is glacially slow. Once 'up', the execution speed of FlutterDriver tests themselves are fast
enough for you to feel fairly pleased with the choice of stack. I wish that delay until first test were
3 seconds though.

Here's the Android build running twice (click to go to Youtube):

[![That Flutter Driver Tutorial](https://user-images.githubusercontent.com/82182/44264802-52ed9d00-a1fa-11e8-99fc-c76ef78cb989.png)](https://www.youtube.com/watch?v=6o1TiBGg81Y "That Flutter Driver Tutorial")

First time (49 seconds) is after some whitespace changes to the app and the tests. The second time is 23
seconds and immediately after the first one, so no whitespace changes and therefore no compile stage.

The iOS build is about 70 seconds first time, and 40 seconds for subsequent ones, and looks much the same.