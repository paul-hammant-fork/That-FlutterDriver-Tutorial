import 'package:integrationtestexample/display_strings.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:integrationtestexample/key_strings.dart';

SerializableFinder emptyMessage = find.text(EMPTY);
SerializableFinder showStores = find.text(SHOW_STORES);
SerializableFinder showProducts = find.text(SHOW_PRODUCTS);

SerializableFinder firstStore = find.byValueKey(getStringKeyForListItem(STORE_TYPE, 0));

SerializableFinder firstProduct = find.byValueKey(getStringKeyForListItem(PRODUCT_TYPE, 0));