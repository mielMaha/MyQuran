import 'package:flutter/material.dart';
import 'package:quran2/features/surah/data/model/SurahModel.dart';
import 'package:quran2/features/surah/presentation/widgets/List_ayah.dart';
import 'package:quran2/features/surah/presentation/widgets/audioBotton.dart';
import 'package:quran2/features/surah/presentation/widgets/surahItem.dart';

class SurahDetails extends StatelessWidget {
  const SurahDetails({super.key, required this.surahModel});
  final SurahModel surahModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            '${surahModel.surahName}',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          ListAyah(english: surahModel.english, arabic1: surahModel.arabic1),
          Audiobotton(url: surahModel.audio),
        ],
      ),
    );
  }
}
