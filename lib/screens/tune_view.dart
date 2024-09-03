import 'package:flutter/material.dart';
import 'package:repo_app/models/tune_model.dart';
import 'package:repo_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xFFfe3f38), sound: 'note1.wav'),
    TuneModel(color: Color(0xFFfd972a), sound: 'note2.wav'),
    TuneModel(color: Color(0xFFfdeb56), sound: 'note3.wav'),
    TuneModel(color: Color(0xFF32ae56), sound: 'note4.wav'),
    TuneModel(color: Color(0xFF009487), sound: 'note5.wav'),
    TuneModel(color: Color(0xFF319cee), sound: 'note6.wav'),
    TuneModel(color: Color(0xFFa226ab), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Flutter Tunes',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF243138),
        ),
        body: Column(
          children: tunes
              .map((e) => TuneItem(tune: e))
              .toList(), // Call the updated method here
        ),
      ),
    );
  }

//   List<TuneItem> getTuneList() {
//     List<TuneItem> items = [];

//     for (var color in tuneColor) {
//       items.add(TuneItem(color: color)); // Assuming TuneItem is a Widget
//     }

//     return items;
//   }
}
