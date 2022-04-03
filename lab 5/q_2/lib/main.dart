import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lab5_q2',
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: double.infinity,
                      child: FlatButton(
                          color: Colors.yellow,
                          onPressed: () {
                            final player = AudioCache();
                            player.play('note1.wav');
                          },
                          child: (Text(''))),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: double.infinity,
                      child: FlatButton(
                          color: Colors.black,
                          onPressed: () {
                            final player = AudioCache();
                            player.play('note2.wav');
                          },
                          child: (Text(''))),
                    )
                  ],
                ),
              )),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: double.infinity,
                          child: FlatButton(
                              color: Colors.purple,
                              onPressed: () {
                                final player = AudioCache();
                                player.play('note3.wav');
                              },
                              child: (Text(''))),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: double.infinity,
                      child: FlatButton(
                          color: Colors.blue,
                          onPressed: () {
                            final player = AudioCache();
                            player.play('note4.wav');
                          },
                          child: (Text(''))),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: double.infinity,
                      child: FlatButton(
                          color: Colors.orange,
                          onPressed: () {
                            final player = AudioCache();
                            player.play('note5.wav');
                          },
                          child: (Text(''))),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: double.infinity,
                      child: FlatButton(
                          color: Colors.red,
                          onPressed: () {
                            final player = AudioCache();
                            player.play('note6.wav');
                          },
                          child: (Text(''))),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: double.infinity,
                      child: FlatButton(
                          color: Colors.green,
                          onPressed: () {
                            final player = AudioCache();
                            player.play('note7.wav');
                          },
                          child: (Text(''))),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
