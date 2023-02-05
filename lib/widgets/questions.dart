import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  var text;
  Questions({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}
