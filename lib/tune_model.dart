import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  Color color;
  String sound;

  TuneModel({required this.color, required this.sound});
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
