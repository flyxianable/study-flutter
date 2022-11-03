import 'package:flutter/material.dart';

class DecoratedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("app bar title"),
        ),
        body: Center(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.red, Colors.yellow.shade900]),  //背景渐变
              borderRadius: BorderRadius.circular(50), //圆角
              boxShadow: [ //阴影
                BoxShadow(
                  //阴影的颜色
                    color: Colors.black54,
                    //阴影与容器的距离
                    offset: Offset(2, 2),
                   //高斯的标准偏差与盒子的形状卷积
                    blurRadius: 50),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              child: Text(
                "ok",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
