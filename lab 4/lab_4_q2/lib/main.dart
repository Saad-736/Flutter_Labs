import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
              ),
            ),
            Expanded(
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
