import 'package:dio/dio.dart';

import '../models/surah_model.dart';

class QuranApi {
  Future<List<Surah>> getQuran() async {
    Response response = await Dio().get(
      'https://quranapi.pages.dev/api/surah.json',
    );
    List<dynamic> data = response.data;
    List<Surah> QuranList = [];
    for (var i in data) {
      Surah surahModel = Surah.fromJson(i);
      QuranList.add(surahModel);
    }
    return QuranList;
  }
}
