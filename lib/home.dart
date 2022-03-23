import 'package:flutter/material.dart';
import 'package:reaction/styledtext.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff00c288),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StyledText(text: "Reaction Test", size: 45, color: true),
              OutlinedButton(
                child: SizedBox(
                    width: 200,
                    height: 70,
                    child: Center(
                        child: StyledText(text: "Go!", size: 30, color: true))
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/test');
                },
              )
            ],
          ),
        )
    );
  }
}
