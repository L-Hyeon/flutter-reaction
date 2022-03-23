import 'package:flutter/material.dart';
import 'package:reaction/styledtext.dart';

class ResultPage extends StatelessWidget {
  final List records;
  const ResultPage({Key? key, required this.records}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00c288),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            child: StyledText(
              text: "Result",
              size: 50,
              color: true,
            ),
          ),
          Column(
            children: [
              SizedBox(
                  child: Center(
                    child: StyledText(
                      text: "1st: ${records[0]}",
                      size: 30,
                      color: true,
                    ),
                  )
              ),
              SizedBox(
                  child: Center(
                    child: StyledText(
                      text: "2nd: ${records[1]}",
                      size: 30,
                      color: true,
                    ),
                  )
              ),
              SizedBox(
                  child: Center(
                    child: StyledText(
                      text: "3rd: ${records[2]}",
                      size: 30,
                      color: true,
                    ),
                  )
              ),
              SizedBox(
                  child: Center(
                    child: StyledText(
                      text: "4th: ${records[3]}",
                      size: 30,
                      color: true,
                    ),
                  )
              ),
              SizedBox(
                  child: Center(
                    child: StyledText(
                      text: "5th: ${records[4]}",
                      size: 30,
                      color: true,
                    ),
                  )
              ),
              SizedBox(
                child: StyledText(
                    text: "Avg: ${(records[0] + records[1] + records[2] + records[3] + records[4])/5}",
                    size: 30,
                    color: true
                ),
              ),
            ],
          ),
          SizedBox(
            width: 230,
            height: 70,
            child: OutlinedButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
              child: StyledText(
                text: "Try Again?",
                size: 30,
                color: true,
              )
            ),
          )
        ],
      )
    );
  }
}