import 'dart:ffi';
import 'dart:ui';

import 'package:coffee_shop/coffee_prefe.dart';
import 'package:coffee_shop/styled_body_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.brown.shade600,
          padding: const EdgeInsets.all(20),
          child: const StyledBodyText("How I like my coffee"),
        ),
        Container(
          color: Colors.brown.shade100,
          padding: const EdgeInsets.all(20),
          child: const CoffeePrefe(),
        ),
        Expanded(
            child: Image.asset(
          "assets/img/coffee_bg.jpg",
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomCenter,
        ))
      ],
    );
  }
}
