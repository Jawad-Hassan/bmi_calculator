import 'package:flutter/material.dart';
import 'first_page.dart';

void main() {
  runApp(bmiCalculator());
}

class bmiCalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}




