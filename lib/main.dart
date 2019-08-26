import 'package:flutter/material.dart';
import 'package:hello_flutter/model/Car.dart';

void main(List<String> args) => runApp(App());

final cars = fetchPosts();

class MyWidget extends StatelessWidget {
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

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home(), theme: ThemeData(primaryColor: Colors.red));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(title: Text('我是标题')),
        body: MyWidget());
  }
}
