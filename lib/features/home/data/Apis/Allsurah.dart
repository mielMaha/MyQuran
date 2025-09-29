import 'package:dio/dio.dart';

import '../models/surah.dart';

class Allsurahapi {
  String rootQuran = 'https://quranapi.pages.dev';
  String chanel = '/api';
  String endPoint = '/surah.json';

  Future<List<Surah>> getSurah() async {
    Response response = await Dio().get('$rootQuran$chanel$endPoint');
    List<dynamic> list = response.data;
    List<Surah> allSurah = [];
    for (var i in list) {
      Surah surah = Surah.fromJson(i);
      allSurah.add(surah);
    }
    return allSurah;
  }
}
