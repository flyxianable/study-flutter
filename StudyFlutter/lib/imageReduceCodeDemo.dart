import 'package:flutter/material.dart';

/**
 * 布局简化前的写法
 */
class ImageComplexDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("app title"),
        ),
        body:
        SingleChildScrollView(
          // child: Padding(
          //   padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/putao.jpeg",
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("contain"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2.0,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/putao.jpeg",
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("cover"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2.0,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/putao.jpeg",
                          width: 200,
                          height: 200,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("fill"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2.0,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/putao.jpeg",
                          width: 200,
                          height: 200,
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("fitWidth"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2.0,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/putao.jpeg",
                          width: 200,
                          height: 200,
                          fit: BoxFit.fitHeight,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("fitHeight"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2.0,
                color: Colors.red,
              ),
            ],
          ),
          // ),
        ),
      ),
    );
  }
}

/**
 * 对冗余代码进行抽取，代码更简洁。
 */
class ImageReduceCodeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("app title"),
        ),
        body: SingleChildScrollView(
          // child: Padding(
          //   padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              buildImageFit(BoxFit.contain),
              buildDivider(),
              buildImageFit(BoxFit.cover),
              buildDivider(),
              buildImageFit(BoxFit.fill),
              buildDivider(),
              buildImageFit(BoxFit.fitWidth),
              buildDivider(),
              buildImageFit(BoxFit.fitHeight),
            ],
          ),
          // ),
        ),
      ),
    );
  }

    /**
     * 抽出来一个方法
     */
    Widget buildImageFit(BoxFit boxFit) {
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
                  fit: boxFit,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(boxFit.name),
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

}
