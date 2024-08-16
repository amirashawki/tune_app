import 'package:flutter/material.dart';
import 'package:tune_app/tune_item.dart';
import 'package:tune_app/tune_model.dart';

void main() {
  runApp(TuneApp());
}

class TuneApp extends StatelessWidget {
  TuneApp({super.key});

  final List<TuneModel> tunes = [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.green, sound: 'note2.wav'),
    TuneModel(color: Colors.blue, sound: 'note3.wav'),
    TuneModel(color: Colors.orange, sound: 'note4.wav'),
    TuneModel(color: Colors.amber, sound: 'note5.wav'),
    TuneModel(color: Colors.blueGrey, sound: 'note6.wav'),
    TuneModel(color: Colors.lightBlue, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Flutter Tune',
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: Column(
            children: tunes
                .map(
                  (e) => TuneItem(
                    model: e,
                  ),
                )
                .toList()),
      ),
    );
  }
}
