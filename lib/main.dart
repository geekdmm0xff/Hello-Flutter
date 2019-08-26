import 'package:flutter/material.dart';

void main(List<String> args) => runApp(App());

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style =
        TextStyle(color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold);
    return Center(
        child:
            Text('Miss 梦梦!!', textDirection: TextDirection.ltr, style: style));
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final home =
        Scaffold(appBar: AppBar(title: Text('我是标题')), body: MyWidget());
    return MaterialApp(home: home, theme: ThemeData(primaryColor: Colors.red));
  }
}
