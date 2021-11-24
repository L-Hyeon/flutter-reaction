import 'package:flutter/material.dart';
import 'package:reaction/test_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Reaction Test",
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => HomePage(),
        '/test' : (BuildContext context) => TestPage()
      }
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Center(
            child: TText(
              text: "Reaction Test",
              size: 50
            )
          ),
          Center(
            child: SizedBox(
              width: 200,
              height: 70,
              child: RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/test');
                },
                color: Colors.white,
                child: const TText(
                  text: "Start",
                  size: 30
                ),
              ),
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
        color: const Color(0xff00c95e),
        fontFamily: "c24",
        fontSize: size
      ),
    );
  }
}
