const String PRODUCT_TYPE = 'PRODUCT_';
const String STORE_TYPE = 'STORE_';

String getStringKeyForListItem(String type, int index) {
  return type + index.toString();
}