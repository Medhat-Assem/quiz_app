import 'package:flutter/material.dart';

class QuestionsContainer extends StatelessWidget {
  var color, shadowColor, text;
  double? width, height, radius, blurRadius, offsetX, offsetY;
  QuestionsContainer(
      {super.key,
      this.width = 350,
      this.height = 200,
      this.color = Colors.white,
      this.radius = 15,
      this.shadowColor = Colors.grey,
      this.blurRadius = 4,
      this.offsetX = 4,
      this.offsetY = 8,
      this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(radius!)),
          boxShadow: [
            BoxShadow(
                color: shadowColor,
                blurRadius: blurRadius!,
                offset: Offset(offsetX!, offsetY!))
          ]),
      child: Center(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: text,
      )),
    );
  }
}
