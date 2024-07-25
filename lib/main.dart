import 'package:coffee_shop/home.dart';
import 'package:coffee_shop/styled_title.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const StyledTitle("MY COFFEE SHOP"),
            backgroundColor: Colors.brown.shade800,
            foregroundColor: Colors.white,
            centerTitle: true,
          ),
          body: Home(),
        ));
  }
}
