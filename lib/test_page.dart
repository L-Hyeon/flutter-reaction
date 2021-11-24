import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:async';
import 'dart:math';
import 'package:reaction/result_page.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  DateTime backPressedTime = DateTime(-1);
  Timer? timer;
  int sec = 0;
  int state = 0;
  // 0 == ready, 1 == touch, 2 == too fast, 4= record
  List<int> records = [0, 0, 0, 0, 0];
  int idx = 0;

  void startTimer(){
    timer = Timer.periodic(const Duration(milliseconds: 1), (timer) {
      setState(() {
        sec -= 1;
        if (sec == 0) {
          state = 1;
        }
      });
    });
  }

  void stopTimer(){
    timer?.cancel();
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (backPressedTime == DateTime(-1) ||
        now.difference(backPressedTime) > Duration(seconds: 2)) {
      backPressedTime = now;
      Fluttertoast.showToast(msg: "종료하려면 한 번 더 누르세요");
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  void initState() {
    super.initState();
    sec = 500 + Random().nextInt(1500);
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: onWillPop,
        child: InkWell(
          onTap: (){
            stopTimer();
            setState(() {
              if (state == 0) {
                //ready
                state = 2;
                stopTimer();
              }
              else if (state == 1){
                // touch
                stopTimer();
                records[idx] = -sec;
                idx += 1;
                sec = 500 + Random().nextInt(1500);
                state = 3;
              }
              else if (state == 3){
                // records
                if (idx != 5){
                  state = 0;
                  startTimer();
                }
                else {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => ResultPage(records: records)), (route) => false);
                }
              }
              else if (state == 2){
                // too fast
                state = 0;
                sec = 500 + Random().nextInt(1500);
                startTimer();
              }
            });
          },
          child: (state == 3) ? Container(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                records[idx - 1].toString(),
                style: const TextStyle(
                  fontFamily: "c24",
                  fontSize: 50,
                  color: Colors.white
                ),
              )
            )
          ) : contents[state],
        ),
      ),
    );
  }

  List<Container> contents = [
    Container(
      //Ready
      color: Colors.white,
      child: const Center(
        child:Text(
          "Ready",
          style: TextStyle(
            fontFamily: "c24",
            fontSize: 50,
            color: Color(0xff00c95e)
          ),
        )
      ),
    ),
    Container(
      //Touch
      color: const Color(0xff00c95e),
      child: const Center(
        child:Text(
          "Touch",
          style: TextStyle(
            fontFamily: "c24",
            fontSize: 50,
            color: Colors.white
          ),
        )
      ),
    ),
    Container(
      //Too fast
      color: Colors.redAccent,
      child: const Center(
          child:Text(
            "Too Fast",
            style: TextStyle(
                fontFamily: "c24",
                fontSize: 50,
                color: Colors.white
            ),
          )
      ),
    )
  ];

}

