import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Echo(text: "echo title", background: Colors.yellow),
    );
  }


}


class Echo extends StatelessWidget {
  final String text;
  final Color background;

  const Echo({Key? key, required this.text, required this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("echo demo"),
        ),
      body: Center(
        child: Container(
          color: background,
          child: Text(text),
        ),
      ),
    );

  }
}
