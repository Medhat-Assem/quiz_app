import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnswerButton extends StatelessWidget {
  double? width, height, fontSize;
  Function()? onPress;
  // ignore: prefer_typing_uninitialized_variables
  var text;
  Color? color, backgroundColor;
  AnswerButton(
      {super.key,
      this.width = 300,
      this.height = 50,
      this.fontSize = 18,
      this.onPress,
      this.backgroundColor = const Color(0xFFA90E24),
      this.color = Colors.white,
      this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 50),
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
