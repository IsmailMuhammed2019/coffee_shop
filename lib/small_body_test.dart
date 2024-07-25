import 'package:flutter/material.dart';

class SmallBodyTest extends StatelessWidget {
  const SmallBodyTest(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Colors.white,
        ));
  }
}
