import 'package:dio/dio.dart';
import 'package:quran2/features/home/data/models/azkar_model.dart';

class AzkarApi {
  AzkarApi();

  Future<List<AzkarModel>> getAzkar(String url) async {
    Response response = await Dio().get(url);
    List<dynamic> list = response.data['content'];
    List<AzkarModel> azkarList = [];
    for (var i in list) {
      azkarList.add(AzkarModel.fromjson(i, response.data['title']));
    }
    return azkarList;
  }
}
