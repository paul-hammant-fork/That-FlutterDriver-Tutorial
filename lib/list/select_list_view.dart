import 'package:flutter/material.dart';
import '../display_strings.dart';

class SelectListView extends StatelessWidget {
  SelectListView({Key key, this.showProducts, this.showStores}) : super(key: key);

  Function showProducts;

  Function showStores;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new FlatButton(
            textColor: Colors.blueGrey,
            color: Colors.white,
            child: new Text(SHOW_STORES),
            onPressed: showStores,
          ),
          new FlatButton(
            textColor: Colors.blueGrey,
            color: Colors.white,
            child: new Text(SHOW_PRODUCTS),
            onPressed: showProducts,
          ),
        ],
      ),
    );


  }


}