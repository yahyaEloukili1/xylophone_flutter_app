import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded playSound(int number,Object color){

   return Expanded(
      child: FlatButton(
        color: color,
        child: Text('hello'),
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(

          child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch  ,
            children: [
             playSound(1, Colors.green),
              playSound(2, Colors.red),
              playSound(3, Colors.black),
              playSound(4, Colors.yellow),
              playSound(5, Colors.teal),
              playSound(6, Colors.blue),
              playSound(7, Colors.pink),
              



            ],
          ),
        ),
      ),
    );
  }
}
