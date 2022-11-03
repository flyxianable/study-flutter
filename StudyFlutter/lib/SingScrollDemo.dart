import 'package:flutter/material.dart';

class SingleScrollDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("app title"),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(40),
                child: Center(
                  child: Column(
                    children: str
                        .split("")
                        .map(
                          (e) =>

                              //在这里增加间距，也就是Column子元素的间距
                              Padding(
                               padding: EdgeInsets.only(bottom: 20),
                               child:
                              Text(e)
                              ),
                        )
                        .toList(),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
