import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XyloPhone());

class XyloPhone extends StatelessWidget {
   button(Color buttonclr,int notes){
      return Expanded(
        child: FlatButton(
          color: buttonclr,
          onPressed: (){
            AudioCache player = AudioCache();
            player.play('note$notes.wav');
          },
          child: Text(''),
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
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
            button(Colors.red,1),
            button(Colors.orange,2),
           button(Colors.yellow,3),
           button(Colors.green,4),
           button(Colors.blue,5),
           button(Colors.indigoAccent,6),
           button(Colors.purple,7),
     ],
          ),
             ),
        ),
    );
  }
}

