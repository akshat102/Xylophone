import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Xylophone(),
      debugShowCheckedModeBanner: false,
    ));

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                component(Colors.red, 'note1.wav'),
                component(Colors.orange, 'note2.wav'),
                component(Colors.yellow, 'note3.wav'),
                component(Colors.green, 'note4.wav'),
                component(Colors.blue, 'note5.wav'),
                component(Colors.indigo, 'note6.wav'),
                component(Colors.purple, 'note7.wav'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget component(Color col, String music) {
    return Expanded(
      flex: 1,
      child: Card(
        elevation: 6,
        child: FlatButton(
          onPressed: () {
            final player = AudioCache();
            player.play(music);
          },
          color: col,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        height: 30,
                        width: 10,
                        color: Colors.grey,
                      ),
                    ),
          ),
        ),
      ),
    );
  }
}
