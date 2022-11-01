import 'package:flutter/material.dart';

class CountWidget extends StatefulWidget{

  @override
  _CountWidgetState createState() {
    // TODO: implement createState
    return new _CountWidgetState();
  }

}

class _CountWidgetState extends State<CountWidget>{

  int _count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _count = 0;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ++_count;
            });
          },
          child: Text("hehe"),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant CountWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }



}