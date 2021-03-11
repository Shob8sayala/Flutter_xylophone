import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n){
    final player = AudioCache();
    player.play('note$n.wav');
  }
  Expanded buildKey(int n1,Color str){
    return Expanded(
      child: FlatButton(
        color: str,
        onPressed: (){
          playSound(n1);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.blue),
              buildKey(5, Colors.green),
              buildKey(6, Colors.blueAccent),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
