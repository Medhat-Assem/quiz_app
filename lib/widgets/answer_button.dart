import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  double? width, height, fontSize;
  Function()? onPress;
  var text;
  Color? color, backgroundColor;
  AnswerButton(
      {super.key,
      this.width = 300,
      this.height = 50,
      this.fontSize = 18,
      required this.onPress,
      this.backgroundColor = const Color(0xFFA90E24),
      this.color = Colors.white,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 50),
        child: SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: onPress,
            style: OutlinedButton.styleFrom(backgroundColor: backgroundColor),
            child: Text(
              text,
              style: TextStyle(color: color, fontSize: fontSize),
            ),
          ),
        ));
  }
}
