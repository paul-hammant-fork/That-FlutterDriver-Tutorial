import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'package:integrationtestexample/display_strings.dart';

void main() {
  group('list content test', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null)
        driver.close();
    });

    test('Verify empty list message is shown', () async {

      SerializableFinder emptyMessage = find.text(EMPTY);

      await driver.waitFor(emptyMessage);

    });


  });


}