// import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final audioCache = AudioCache();
    audioCache.play("note$note.wav");
  }

  buildKey(color, note) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(4.0),
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(note);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(Colors.red, 1),
            buildKey(Colors.orange, 2),
            buildKey(Colors.yellow, 3),
            buildKey(Colors.green, 4),
            buildKey(Colors.teal, 5),
            buildKey(Colors.blue, 6),
            buildKey(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}
