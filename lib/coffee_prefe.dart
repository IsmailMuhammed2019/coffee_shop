import 'package:coffee_shop/small_body_test.dart';
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
    return Column(
      children: [
        Row(
          children: [
            const SmallBodyTest('Strenght: '),
            Image.asset(
              'assets/img/coffee_bean.png',
              width: 25,
              color: Colors.brown.shade100,
              colorBlendMode: BlendMode.multiply,
            ),
            const SizedBox(width: 50),
            const SmallBodyTest("+")
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SmallBodyTest('Sugar: '),
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown.shade100,
              colorBlendMode: BlendMode.multiply,
            ),
            const SizedBox(width: 50),
            const SmallBodyTest("+")
          ],
        ),
      ],
    );
  }
}
