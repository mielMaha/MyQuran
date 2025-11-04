import 'package:dio/dio.dart';
import 'package:quran2/features/surah/data/model/SurahModel.dart';

class SurahApi {
  String root = 'https://quranapi.pages.dev/api/';

  Future<SurahModel> getSurah(int surahNo) async {
    Response response = await Dio().get('$root$surahNo.json');
    SurahModel surahModel = SurahModel.fromJson(response.data);
    return surahModel;
  }
}
