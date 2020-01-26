import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

drawSoundButton(String sound, Color color) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play(sound);
      },
      child: null,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              drawSoundButton('note1.wav', Colors.pink),
              drawSoundButton('note2.wav', Colors.redAccent),
              drawSoundButton('note3.wav', Colors.amber),
              drawSoundButton('note4.wav', Colors.green),
              drawSoundButton('note5.wav', Colors.teal),
              drawSoundButton('note6.wav', Colors.blue),
              drawSoundButton('note7.wav', Colors.purpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}
