import 'package:coffee_shop/small_body_test.dart';
import 'package:coffee_shop/styled_body_text.dart';
import 'package:coffee_shop/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefe extends StatefulWidget {
  const CoffeePrefe({super.key});

  @override
  State<CoffeePrefe> createState() => _CoffeePrefeState();
}

class _CoffeePrefeState extends State<CoffeePrefe> {
  int strenght = 1;
  int sugar = 1;

  void updateStrenght() {
    setState(() {
      strenght = strenght < 5 ? strenght + 1 : 1;
    });
  }

  void updateSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SmallBodyTest('Strenght: '),
            for (int i = 0; i < strenght; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown.shade100,
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: updateStrenght,
              text: '+',
              child: const Text("+"),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(children: [
          const SmallBodyTest('Sugar: '),
          if (sugar == 0) const SmallBodyTest("No Sugar"),
          for (int i = 0; i < sugar; i++)
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown.shade100,
              colorBlendMode: BlendMode.multiply,
            ),
          const Expanded(child: SizedBox(width: 50)),
          StyledButton(
            onPressed: updateSugar,
            text: '+',
            child: const Text("+"),
          )
        ]),
      ],
    );
  }
}
