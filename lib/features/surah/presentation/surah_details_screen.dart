import 'package:flutter/material.dart';
import 'package:quran2/features/surah/data/model/SurahModel.dart';
import 'package:quran2/features/surah/presentation/widgets/audio_botton.dart';

import 'package:quran2/features/surah/presentation/widgets/aya_widget.dart';

import '../../../core/utils/color_guid.dart';
import '../../../core/utils/fonts_guid.dart';
import '../../../core/utils/screen_size.dart';

class SurahDetails extends StatefulWidget {
  const SurahDetails({super.key, required this.surahModel});
  final SurahModel surahModel;

  @override
  State<SurahDetails> createState() => _SurahDetailsState();
}

class _SurahDetailsState extends State<SurahDetails> {
  @override
  Widget build(BuildContext context) {
    final double h = ScreenSize.hight(context);
    final double w = ScreenSize.width(context);

    final horizontalPadding = w * 0.05;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: h * 0.077,
                    left: horizontalPadding,
                    right: horizontalPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.surahModel.surahName,
                        style: TextStyle(
                          color: ColorGuid.mainColor,
                          fontSize: h * 0.05,
                          fontFamily: FontsGuid.quranFont,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: h * 0.07),
                // البسملة
                Text(
                  "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِ",
                  style: TextStyle(
                    color: ColorGuid.mainColor,
                    fontSize: h * 0.04,
                    fontFamily: FontsGuid.quranFont,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "In the name of Allah, the Most Gracious, the Most Merciful",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: h * 0.025,
                    fontFamily: FontsGuid.quranFont,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: h * 0.03),

                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: w * 0.05,
                    vertical: h * 0.02,
                  ),
                  separatorBuilder:
                      (context, index) => SizedBox(height: h * 0.05),
                  itemBuilder:
                      (context, index) => AyaWidget(
                        num: index + 1,
                        ayaAr: widget.surahModel.arabic1[index],
                        ayaEn: widget.surahModel.english[index],
                      ),
                  itemCount: widget.surahModel.english.length,
                ),

                SizedBox(height: h * 0.15),
              ],
            ),
          ),

          Positioned(
            bottom: h * 0.02,
            child: Audiobotton(url: widget.surahModel.audio),
          ),
        ],
      ),
    );
  }
}
