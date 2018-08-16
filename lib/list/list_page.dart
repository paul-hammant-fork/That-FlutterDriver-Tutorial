import 'package:flutter/material.dart';
import 'select_list_view.dart';
import 'list_view.dart';
import '../key_strings.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => new _ListPageState();

}

class _ListPageState extends State<ListPage> {

  List<String> _stores;

  List<String> _products;

  List<String> _selectedItems;

  String _selectedType;

  @override
  void initState() {
    super.initState();

    _selectedItems = null;
    _selectedType = '';

    // TODO - this is shortcut to specify products and stores.
    // In practice, you should load this from a data repository.
    _stores = new List<String>();
    _stores.add('London');
    _stores.add('Paris');
    _stores.add('Atlanta');

    _products = new List<String>();
    _products.add('Laptop');
    _products.add('Monitor');
  }

  @override
  Widget build(BuildContext context) {
    Widget buttonsWidget = new SelectListView(showProducts: _showProducts, showStores: _showStores);

    Widget itemsWidget = new ItemsListView(typeId: _selectedType, items: _selectedItems);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List of items"),
      ),
      body: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
        child: new Column(children: <Widget>[
          buttonsWidget,
          new Expanded(
            child:
            itemsWidget,
          ),
        ],
        ),
      ),
    );
  }

  void _showProducts() {
    setState(() {
      _selectedItems = _products;
      _selectedType = PRODUCT_TYPE;
    });
  }

  void _showStores() {
    setState(() {
      _selectedItems = _stores;
      _selectedType = STORE_TYPE;
    });
  }
}