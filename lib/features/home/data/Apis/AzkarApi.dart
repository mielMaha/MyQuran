import 'package:dio/dio.dart';
import 'package:quran2/features/home/data/models/AzkarModel.dart';

class AzkarApi {
  String url = 'https://ahegazy.github.io/muslimKit/json/azkar_sabah.json';
  Future<List<AzkarModel>> getAzkar() async {
    Response response = await Dio().get(url);
    List<dynamic> list = response.data['content'];
    List<AzkarModel> azkarList = [];
    for (var i in list) {
      azkarList.add(AzkarModel.fromjson(i, response.data['title']));
    }
    return azkarList;
  }
}
