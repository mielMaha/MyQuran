class AzkarModel {
  String title;
  String zekr;
  int repeat;
  AzkarModel({required this.zekr, required this.repeat, required this.title});
  factory AzkarModel.fromjson(json, String t) {
    return AzkarModel(zekr: json['zekr'], repeat: json['repeat'], title: t);
  }
}
