import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StyledTitle extends StatelessWidget {
  const StyledTitle(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ));
  }
}
