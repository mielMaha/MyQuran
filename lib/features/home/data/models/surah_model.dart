// surah_model.dart
class Surah {
  final String surahName;
  final String surahNameArabic;

  final String revelationPlace;
  final int totalAyah;

  Surah({
    required this.surahName,
    required this.surahNameArabic,

    required this.revelationPlace,
    required this.totalAyah,
  });

  factory Surah.fromJson(Map json) {
    return Surah(
      surahName: json['surahName'] as String? ?? '',
      surahNameArabic: json['surahNameArabic'] as String? ?? '',

      revelationPlace: json['revelationPlace'] as String? ?? '',
      totalAyah: json['totalAyah'] ?? 0,
    );
  }
}
