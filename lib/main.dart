import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

void OnloadAudio(int i) {
  AssetsAudioPlayer.newPlayer().open(
    Audio("assets/note${i}.wav"),
  );
}

Expanded buildKey(int number, {style}) {
  return Expanded(
    child: ElevatedButton(
      onPressed: () {
        OnloadAudio(number);
      },
      style: style,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(




                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildKey(1,
                        style: ElevatedButton.styleFrom(primary: Colors.green)),
                    buildKey(2,
                        style: ElevatedButton.styleFrom(
                            primary: Colors.greenAccent)),
                    buildKey(3,
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightBlueAccent)),
                    buildKey(4,
                        style: ElevatedButton.styleFrom(primary: Colors.blue)),
                    buildKey(5,
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple)),
                    buildKey(6,
                        style: ElevatedButton.styleFrom(
                            primary: Colors.redAccent)),
                    buildKey(7,
                        style: ElevatedButton.styleFrom(
                            primary: Colors.yellowAccent)),
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
