import 'package:flutter/material.dart';
import 'package:hello_flutter/model/Car.dart';

final cars = fetchPosts();

class ListViewDemo extends StatelessWidget {
  Widget _itemForBuilder(BuildContext context, int index) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Image.network(cars[index].imageUrl),
            SizedBox(
              height: 10,
            ),
            Text(
              cars[index].name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cars.length, itemBuilder: _itemForBuilder);
  }
}