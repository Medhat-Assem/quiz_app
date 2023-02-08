// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
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
