import 'package:flutter/material.dart';

var fits = [
  BoxFit.contain,
  BoxFit.cover,
  BoxFit.fill,
  BoxFit.fitWidth,
  BoxFit.fitHeight
];

Widget buildImageFit(int index) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: [
        Row(
          children: [
            Image.asset(
              "assets/images/putao.jpeg",
              width: 200,
              height: 200,
              fit: fits[index],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(fits[index].name),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buildDivider() {
  return Divider(
    height: 2.0,
    color: Colors.red,
  );
}

/**
 * 用listview实现scrollview的页面
 */
class ScrollToListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: fits.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  buildImageFit(index),
                  buildDivider(),
                ],
              );
              buildImageFit(index);
            }),
      ),
    );
  }
}

/**
 * 增加分割线
 */
class ListSeparatDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(
          itemCount: fits.length,
          itemBuilder: (BuildContext context, int index) {
            return buildImageFit(index);
          },
          separatorBuilder: (BuildContext context, int index) {
            return buildDivider();
          },
        ),
      ),
    );
  }
}
