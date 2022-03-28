import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Mobile App Dev Lab'),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Text("You have pressed the button 0 times"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.add),
          hoverColor: Colors.blue,
          tooltip: 'This button is not functional',
        ),
      ),
    );
  }
}
