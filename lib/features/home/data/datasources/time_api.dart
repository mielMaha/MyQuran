import 'package:dio/dio.dart';

import '../models/times_model.dart';

class TimeApi {
  String root = 'https://api.aladhan.com/v1';
  String city = 'Cairo';
  String country = 'Egypt';
  String method = '5';

  Future<TimeModel> getTimes() async {
    Response response = await Dio().get(
      '$root/timingsByCity?city=$city&country=$country&method=$method&timezonestring=Africa/Cairo',
    );
    TimeModel timeModel = TimeModel.fromjson(response.data);
    return timeModel;
  }
}
