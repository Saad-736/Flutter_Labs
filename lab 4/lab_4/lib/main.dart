import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: TextButton(
              onPressed: () {
                randomGenerator();
              },
              child: Image.asset('images/dice$leftNum.png'),
            ),
          ),
        ],
      ),
    );
  }

  randomGenerator() {
    setState(() {
      leftNum = Random().nextInt(6) + 1;
    });
  }
}
