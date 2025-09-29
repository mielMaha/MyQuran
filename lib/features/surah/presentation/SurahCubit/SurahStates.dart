abstract class Surahstates {}

class intalStateSurah extends Surahstates {}

class sucsessStateSurah extends Surahstates {}

class loudStateSurah extends Surahstates {}

class erorrStateSurah extends Surahstates {
  final String error;
  erorrStateSurah(this.error);
}
