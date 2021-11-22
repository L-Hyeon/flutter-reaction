import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reaction Test',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 150),
          Center(
            child: const TText(text: "Reaction Test", size: 50)
          ),
          const SizedBox(height: 130),
          SizedBox(
            width: 150,
            height: 70,
            child: RaisedButton(
              onPressed: (){
              },
              child: const Center(
                child: TText(
                  text: "Start",
                  size: 30
                ),
              ),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class TText extends StatelessWidget {
  final String text;
  final double size;
  const TText({Key? key, required this.text, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: "c24",
        color: Color(0xff00cc66)
      )
    );
  }
}
