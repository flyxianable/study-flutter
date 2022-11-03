import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  var arrStr = [];

  ListViewDemo() {
    for (int i = 0; i < 100; i++) {
      arrStr.add("number" + i.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("app title"),
            ),
            body: Padding(
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                  itemCount: arrStr.length,
                  // itemExtent: 50, // 指定item的高度
                  itemBuilder: (BuildContext context, int index) {
                    // String str = (index + 1).toString() + "-- hi you";
                    // return ListTile(
                    //   title: Text(str),
                    // );
                    return getItemWidget(arrStr, index);
                  }),
            )));
  }

  /**
   * listview的item控件
   */
  Widget getItemWidget(List<dynamic> values, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            values[index],
            style: TextStyle(color: Colors.orange),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20),
              child: Image.asset(
                "assets/images/tu1.jpeg",
                fit: BoxFit.contain,
                width: 200,
              ))
        ],
      ),
    );
  }
}
