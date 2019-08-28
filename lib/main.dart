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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Icon(
                  Icons.access_alarm,
                ),
                Icon(
                  Icons.accessible_forward,
                ),
                Icon(
                  Icons.assistant_photo,
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            Icon(
              Icons.access_alarm,
              size: 128.0,
            ),
            Icon(
              Icons.accessible_forward,
              size: 128.0,
            ),
            Icon(
              Icons.assistant_photo,
              size: 128.0,
            ),
          ],)),
    );
  }
}
