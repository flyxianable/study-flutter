import 'package:flutter/material.dart';

class MarginDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "aa",
      home: Scaffold(
        appBar: AppBar(
          title: Text("bb"),
        ),
        body: Center(
          child:
          Container(
            margin: const EdgeInsets.all(100),
            color: Colors.blue,
            alignment: Alignment.center,
            child:
            Text("hi you gary"),
          ),
        ),
      ),
    );
  }

}


class PaddingDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "aa",
      home: Scaffold(
        appBar: AppBar(
          title: Text("bb"),
        ),
        body: Center(
          child:
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            child:
            Text("hi you gary"),
          ),
        ),
      ),
    );
  }

}