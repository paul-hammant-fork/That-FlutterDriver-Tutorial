This repo is the code from Natalie Masse Hooper's tutorial: "How to write an integration test in Flutter" detailed at
[http://cogitas.net/write-integration-test-flutter/](http://cogitas.net/write-integration-test-flutter/).

Intefration tests, as Flutter would have it, are UI-clicking tests that are a high-confidence test of
your solution in an emulator. Once running they are fast enough, but to get there they

## Installing Flutter's bits and pieces:

Unfortunately, there's no Homebrew install for Flutter, so you have to follow the instructions [here](https://flutter.io/get-started/install/)

## The app.



## Running the FlutterDriver tests

```
flutter drive --target=test_driver/list_content.dart
```

There are three tests in `test_driver/list_content_test.dart`

1. Verify empty list message is shown
2. Tap show stores button, verify stores shown
3. Tap show products button, verify products shown




