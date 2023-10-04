import 'package:alpha_num/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  String input = '';

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}