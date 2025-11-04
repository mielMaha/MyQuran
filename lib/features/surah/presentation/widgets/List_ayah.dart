import 'package:flutter/material.dart';
import 'package:quran2/features/surah/presentation/widgets/surah_item.dart';

class ListAyah extends StatelessWidget {
  const ListAyah({super.key, required this.english, required this.arabic1});

  @override
  final List<dynamic> english;
  final List<dynamic> arabic1;
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder:
            (context, index) => costomSurahItem(
              ar: arabic1[index],
              en: english[index],
              i: index + 1,
            ),
        itemCount: arabic1.length,
      ),
    );
  }
}
