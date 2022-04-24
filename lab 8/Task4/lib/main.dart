import 'package:bankingui/page1.dart';
import 'package:flutter/material.dart';
// import 'package:overflown/page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 4',
      color: Colors.white,
      home: Page1(),
    );
  }
}
