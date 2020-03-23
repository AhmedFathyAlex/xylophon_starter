import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buidKey(1, Colors.red),
            buidKey(2, Colors.orange),
            buidKey(3, Colors.yellow),
            buidKey(4, Colors.blue),
            buidKey(5, Colors.green),
            buidKey(6, Colors.teal),
            buidKey(7, Colors.purple),
          ],
        ),
      ),
    );
  }

  void playSound(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }

  Widget buidKey(int no, Color c) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(no);
        },
        color: c,
      ),
    );
  }
}
