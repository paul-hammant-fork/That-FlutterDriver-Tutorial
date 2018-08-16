import 'package:flutter/material.dart';
import '../key_strings.dart';
import '../display_strings.dart';

class ItemsListView extends StatelessWidget {
  ItemsListView({Key key, this.items, this.typeId}) : super(key: key);

  List<String> items;

  String typeId;

  @override
  Widget build(BuildContext context) {
    if (items != null) {
      return
        new ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: items.map((String value) {
              return _singleItemDisplay(value, items.indexOf(value));
            }).toList());
    } else {
      return new Text(EMPTY);
    }

  }

  Widget _singleItemDisplay(String item, int index) {
    return new Container(
      key: new Key(getStringKeyForListItem(typeId, index)),
      height: 40.0,
      child: new Container (
        padding: const EdgeInsets.all(2.0),
        color: new Color(0x33000000),
        child: new Text(item),
      ),
    );
  }


}