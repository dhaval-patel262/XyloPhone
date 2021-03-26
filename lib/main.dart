import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded BuildKey({Color color, int num}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            PlaySound(num);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BuildKey(color : Colors.red,num: 1),
                  BuildKey(color : Colors.orange,num: 2),
                  BuildKey(color : Colors.yellow,num: 3),
                  BuildKey(color : Colors.green,num: 4),
                  BuildKey(color : Colors.teal,num: 5),
                  BuildKey(color : Colors.blue,num: 6),
                  BuildKey(color : Colors.purple,num: 7),
                ]),
          ),
        ),
      ),
    );
  }
}
