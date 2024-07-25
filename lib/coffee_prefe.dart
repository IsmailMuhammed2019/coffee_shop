import 'package:coffee_shop/styled_body_text.dart';
import 'package:flutter/material.dart';

class CoffeePrefe extends StatefulWidget {
  const CoffeePrefe({super.key});

  @override
  State<CoffeePrefe> createState() => _CoffeePrefeState();
}

class _CoffeePrefeState extends State<CoffeePrefe> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            StyledBodyText('Strenght: '),
            StyledBodyText('3'),
          ],
        )
      ],
    );
  }
}
