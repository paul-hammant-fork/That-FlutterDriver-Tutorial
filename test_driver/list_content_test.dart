import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import 'finders.dart';

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

      await driver.waitFor(emptyMessage);

    });

    test('Tap show stores button, verify stores shown', () async {

      await driver.tap(showStores);

      await driver.waitFor(firstStore);
      await driver.waitForAbsent(firstProduct);
      await driver.waitForAbsent(emptyMessage);

    });

    test('Tap show products button, verify products shown', () async {

      await driver.tap(showProducts);

      await driver.waitFor(firstProduct);
      await driver.waitForAbsent(firstStore);
      await driver.waitForAbsent(emptyMessage);

    });

  });


}