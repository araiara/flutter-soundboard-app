import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(SoundBoardApp());
}

class SoundBoardApp extends StatelessWidget {
  const SoundBoardApp({Key key}) : super(key: key);

  Widget buildColorButton(Color color, String name, String file) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SizedBox.expand(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: color,
              elevation: 5,
            ),
            onPressed: (){
              AudioCache player = AudioCache();
              player.play(file);
            },
            child: Container(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone App',
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sound Board App'),
        ),
        body: Container(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    buildColorButton(Colors.pink, "Drum", "drum.wav"),
                    buildColorButton(Colors.grey, "C", "note1.wav"),
                    buildColorButton(Colors.yellow, "E", "note3.wav"),
                    buildColorButton(Colors.lightGreen, "G", "note5.wav"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    buildColorButton(Colors.blue, "Meow", "meow.wav"),
                    buildColorButton(Colors.lime, "D", "note2.wav"),
                    buildColorButton(Colors.lightBlue, "F", "note4.wav"),
                    buildColorButton(Colors.blueGrey, "A", "note6.wav"),
                  ],
                ),
              ),
            ],            
          ),
        ),
      ),
    );
  }
}
