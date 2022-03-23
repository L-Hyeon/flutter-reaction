import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final double size;
  final bool color;

  const StyledText({Key? key, required this.text, required this.size, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ? const Color(0xffffffff) : const Color(0xff00c288),
        fontFamily: "baeum",
        fontSize: size
      )
    );
  }
}
