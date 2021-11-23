import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  Timer? timer;
  int sec = 0;
  String state = "Ready";

  void startTimer(){
    timer = Timer.periodic(Duration(milliseconds: sec), (timer) {
      setState(() {
        sec -= 1;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    sec = Random().nextInt(3500);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          print(state);
          if (state == "Ready") {
            state = "Touch";
          }
          else {
            state = "Ready";
          }
        },
        child: Container(
          color: const Color(0xff00c95e),
          child: Center(
            child: Text(
              state,
              style: const TextStyle(
                fontFamily: "c24",
                fontSize: 50,
                color: Colors.white
              ),
            )
          ),
        ),
      ),
    );
  }
}
