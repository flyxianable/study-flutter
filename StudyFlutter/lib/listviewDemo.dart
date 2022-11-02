import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("app title"),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemExtent: 50,
          itemBuilder: (BuildContext context, int index) {
            String str = (index + 1).toString() + "-- hi you";
            return ListTile(
              title: Text(str),
            );
          }),
    ));
  }
}
