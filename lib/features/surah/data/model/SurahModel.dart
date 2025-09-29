class SurahModel {
  String surahName;
  int surahNo;
  List<dynamic> english;
  List<dynamic> arabic1;
  String audio;

  SurahModel({
    required this.surahName,
    required this.surahNo,
    required this.english,
    required this.arabic1,
    required this.audio,
  });

  factory SurahModel.fromJson(Map<String, dynamic> json) {
    return SurahModel(
      surahName: json['surahName'],
      surahNo: json['surahNo'],
      english: json['english'] ?? [],
      arabic1: json['arabic1'] ?? [],
      audio: json['audio']["1"]['url'],
    );
  }
}
