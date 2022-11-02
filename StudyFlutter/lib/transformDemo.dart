import 'package:flutter/material.dart';

class TransformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("app title"),
          ),
          body: Center(
            child: Container(
              color: Colors.grey,
              child: Transform(
                alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                transform: Matrix4.skewY(0.3), ////沿Y轴倾斜0.3弧度
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.orange,
                  child: Text(
                    "hello, world!",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
              ),
            ),
          ),
      ),
    );
  }
}
