import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:async';

import 'package:flutter/scheduler.dart';

// void main(){
//   runApp(new MyApp());
// }

// class PubDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     String randWord = WordPair.random().toString();
//     return MaterialApp(
//         title: "abc",
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text("random english words"),
//             ),
//             body: Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 10),
//                 child: Text(
//                   randWord,
//                   style: TextStyle(fontSize: 32, color: Colors.lightBlue),
//                 ),
//               ),
//             )));
//   }
// }

class PubRandomPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print("createState");
    return new PubState();
  }


}

/**
 * 使用timer，没5秒随机更换英文单词
 * 1、三方库的引用
 * 2、timer在State中的使用
 *  https://github.com/flyxianable/study-flutter/wiki/%E8%AE%A1%E6%97%B6%E5%99%A8%E7%A4%BA%E4%BE%8B
 * 3、State的生命周期
 * https://github.com/flyxianable/study-flutter/wiki/StatefulWidget%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F
 * 4、app的生命周期
 * https://github.com/flyxianable/study-flutter/wiki/app%E7%9A%84%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F
 *

 */
class PubState extends State<PubRandomPage> with WidgetsBindingObserver{

  String randWord = WordPair.random().toString();
  int mCountValue = 20;
  int durSecond = 5;
  Timer? _timer = null;

  // 启动Timer
  void _startTimer() {
    print("_startTimer");
    final Duration duration = Duration(seconds: durSecond);
    cancelTimer();

    _timer = Timer.periodic(duration, (timer) {
      mCountValue--;
      if (this.mounted) {
        setState(() {
          randWord = WordPair.random().toString();
        });
      }
      print('mCountValue');
      print(mCountValue);
      if (mCountValue <= 0) {
        cancelTimer();
      }
    });
  }

  void cancelTimer() {
    if (_timer != null) {
      _timer?.cancel();
    }
  }

  void _restartTimer(int tempCount) {
    print("_startTimer");
    final Duration duration = Duration(seconds: durSecond);
    cancelTimer();

    _timer = Timer.periodic(duration, (timer) {
      tempCount--;
      if (this.mounted) {
        setState(() {
          randWord = WordPair.random().toString();
        });
      }
      print('tempCount');
      print(tempCount);
      if (tempCount <= 0) {
        cancelTimer();
      }
    });
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("initState");

    _startTimer();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      print("addPostFrameCallback");
    });

    //生命周期添加方法
    WidgetsBinding.instance.addObserver(this);

  }


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print("didChangeDependencies");
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    print("build");


    return MaterialApp(
        title: "abc",
        home: Scaffold(
            appBar: AppBar(
              title: Text("random english words"),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      randWord = WordPair.random().toString();
                    });
                  },
                  child: Text(
                    randWord,
                    style: TextStyle(fontSize: 32, color: Colors.lightBlue),
                  ),
                ),
              ),
            )));
  }


  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();

    print("dispose");
  }


  @override
  void didUpdateWidget(covariant PubRandomPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    print("didUpdateWidget");
  }



  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    /**
     * 注意定时器的回收
     */
    cancelTimer();

    print("deactivate");
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    WidgetsBinding.instance.removeObserver(this);

    print("dispose");
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    print("state = " + state.name);
    if(state == AppLifecycleState.paused){
      cancelTimer();

    }else if(state == AppLifecycleState.resumed){
      _startTimer();
    }
  }




}
