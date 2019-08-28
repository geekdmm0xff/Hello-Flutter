import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';

void main(List<String> args) => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(primaryColor: Colors.yellow));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('我是标题'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "menu",
            onPressed: () => debugPrint('tap menu'),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => debugPrint('search'),
            )
          ],
        ),
        body: null);
  }
}
