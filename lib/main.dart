import 'package:flutter/material.dart';
import 'package:reaction/home.dart';
import 'package:reaction/testing.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Reaction Test",
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => HomePage(),
        '/test' : (BuildContext context) => TestPage(),
      }
    );
  }
}
