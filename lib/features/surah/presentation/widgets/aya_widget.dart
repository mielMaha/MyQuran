import 'package:flutter/material.dart';

import '../../../../core/utils/color_guid.dart';
import '../../../../core/utils/fonts_guid.dart';
import '../../../../core/utils/screen_size.dart';

class AyaWidget extends StatelessWidget {
  const AyaWidget({
    super.key,
    required this.ayaAr,
    required this.ayaEn,
    required this.num,
  });
  final int num;
  final String ayaAr;
  final String ayaEn;

  @override
  Widget build(BuildContext context) {
    final double h = ScreenSize.hight(context);
    final double w = ScreenSize.width(context);

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(h * 0.05),
                color: Color(0xfff9f5fd),
              ),
              height: h * 0.07,
              width: w * 0.9,
              child: Row(
                children: [
                  SizedBox(width: w * 0.034),
                  CircleAvatar(
                    radius: h * 0.023,
                    backgroundColor: ColorGuid.mainColor,
                    child: Text(
                      num.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: FontsGuid.poppins,
                        fontWeight: FontWeight.bold,

                        fontSize: h * 0.022,
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.share,
                        color: ColorGuid.mainColor,

                        size: h * 0.035,
                      ),
                      Icon(
                        Icons.play_arrow_outlined,
                        color: ColorGuid.mainColor,

                        size: h * 0.05,
                      ),
                      Icon(
                        Icons.bookmark_border,
                        color: ColorGuid.mainColor,

                        size: h * 0.035,
                      ),
                    ],
                  ),

                  SizedBox(width: w * 0.034),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: w * 0.03),
            child: Text(
              ayaAr,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,

                fontSize: h * 0.04,
                fontFamily: FontsGuid.quranFont,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w * 0.03),
            child: Text(
              ayaEn,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: h * 0.025,
                fontFamily: FontsGuid.quranFont,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
