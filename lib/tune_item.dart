import 'package:flutter/material.dart';
import 'package:tune_app/tune_model.dart';

// ignore: must_be_immutable
class TuneItem extends StatelessWidget {
  TuneItem({super.key, required this.model});

  TuneModel model;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          model.playSound();
        },
        child: Container(
          height: 120,
          color: model.color,
        ),
      ),
    );
  }
}
