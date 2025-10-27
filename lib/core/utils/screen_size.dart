import 'package:flutter/widgets.dart';

class ScreenSize {
  static double hight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
