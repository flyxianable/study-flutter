import 'package:flutter/material.dart';

/**
 * Flex结合Expand的felx属性使用，这不就是android里的weight属性吗？按权重分配空间
 */
class FlexDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "app title",
      home: Scaffold(
          appBar: AppBar(
            title: Text("appbar Title"),
          ),
          body: Container(
            margin: const EdgeInsets.only(top: 100),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: Container(
                    height: 20,
                    color: Colors.blue,
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.red,
                  ),
                  flex: 1,
                ),
              ],
            ),
          )),
    );
  }
}
