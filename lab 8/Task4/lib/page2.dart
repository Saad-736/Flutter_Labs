import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        body: Container(
          child: Center(
            child: Text('Page 2',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
