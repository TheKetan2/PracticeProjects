import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioCache player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => player.play("note1.wav"),
                  child: Container(
                    color: Colors.red,
                    child: Text("Note 1"),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => player.play("note2.wav"),
                  child: Container(
                    color: Colors.green,
                    child: Text("Note 2"),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => player.play("note3.wav"),
                  child: Container(
                    color: Colors.orange,
                    child: Text("Note 3"),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => player.play("note4.wav"),
                  child: Container(
                    color: Colors.black,
                    child: Text("Note 4"),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => player.play("note5.wav"),
                  child: Container(
                    color: Colors.purple,
                    child: Text("Note 5"),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => player.play("note6.wav"),
                  child: Container(
                    color: Colors.white,
                    child: Text("Note 2"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
