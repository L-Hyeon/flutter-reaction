import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final List records;
  const ResultPage({Key? key, required this.records}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            child: const Text(
              "Result",
              style: TextStyle(
                fontFamily: "c24",
                fontSize: 50,
                color: Color(0xff00c95e)
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Center(
              child: Text(
                "1st: ${records[0]}",
                style: const TextStyle(
                  fontFamily: "c24",
                  fontSize: 30,
                  color: Color(0xff00c95e)
                )
              ),
            )
          ),
          Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Center(
                child: Text(
                    "2nd: ${records[1]}",
                    style: const TextStyle(
                        fontFamily: "c24",
                        fontSize: 30,
                        color: Color(0xff00c95e)
                    )
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Center(
                child: Text(
                    "3rd: ${records[2]}",
                    style: const TextStyle(
                        fontFamily: "c24",
                        fontSize: 30,
                        color: Color(0xff00c95e)
                    )
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Center(
                child: Text(
                    "4th: ${records[3]}",
                    style: const TextStyle(
                        fontFamily: "c24",
                        fontSize: 30,
                        color: Color(0xff00c95e)
                    )
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Center(
                child: Text(
                    "5th: ${records[4]}",
                    style: const TextStyle(
                        fontFamily: "c24",
                        fontSize: 30,
                        color: Color(0xff00c95e)
                    )
                ),
              )
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 50),
            child: Text(
              "Avg: ${(records[0] + records[1] + records[2] + records[3] + records[4])/5}",
              style: const TextStyle(
                  fontFamily: "c24",
                  fontSize: 30,
                  color: Color(0xff00c95e)
              )
            ),
          ),
          SizedBox(
            width: 200,
            height: 150,
            child: RaisedButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
              color: Colors.white,
              child: const Text(
                "Try Again?",
                style: TextStyle(
                  fontFamily: "c24",
                  fontSize: 30,
                  color: Color(0xff00c95e)
                )
              )
            ),
          )
        ],
      )
    );
  }
}
