class TimeModel {
  final Map<String, dynamic> timings;
  final String readable;
  final String day;
  final String month;
  final String year;
  TimeModel({
    required this.timings,
    required this.readable,
    required this.day,
    required this.month,
    required this.year,
  });
  factory TimeModel.fromjson(json) {
    return TimeModel(
      timings: json["data"]["timings"],
      readable: json["data"]["date"]["readable"],
      day: json["data"]["date"]["hijri"]["day"],
      month: json["data"]["date"]["hijri"]["month"]["en"],
      year: json["data"]["date"]["hijri"]["year"],
    );
  }
}
