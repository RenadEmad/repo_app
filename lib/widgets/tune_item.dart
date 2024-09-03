import 'package:flutter/material.dart';
import 'package:repo_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.PlaySound();
        },
        child: Container(
          height: 100,
          color: tune.color,
        ),
      ),
    );
  }

  toList() {}
}