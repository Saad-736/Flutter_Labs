import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            title: Text("I am Rick"),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Image.asset('images/rick.jpg'),
          )),
    );
  }
}
