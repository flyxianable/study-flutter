import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "wrap demo",
      home:Scaffold(
        appBar: AppBar(
          title: Text("abc"),
        ),
        body: Wrap(
          spacing: 4,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            Chip(label: Text("descriptionA"),
            avatar: CircleAvatar(backgroundColor: Colors.red, child: Text("A")),),
            Chip(label: Text("descriptionB"),
              avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("B"))),
            Chip(label: Text("descriptionC"),
                avatar: CircleAvatar(backgroundColor: Colors.yellow, child: Text("C"))),
            Chip(label: Text("descriptionD"),
                avatar: CircleAvatar(backgroundColor: Colors.green, child: Text("D"))),
          ],
        ),
      ),
    );
  }

}