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
        backgroundColor: Colors.teal,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
          ),
          Text(
            "M.Saad",
            style: TextStyle(
                fontSize: 45, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                  iconColor: Colors.teal,
                  leading: Icon(Icons.phone),
                  title: Text(
                    "+92456788999",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child: Column(children: [
              ListTile(
                iconColor: Colors.teal,
                leading: Icon(Icons.email),
                title: Text(
                  'saad@gmail.com',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
}
