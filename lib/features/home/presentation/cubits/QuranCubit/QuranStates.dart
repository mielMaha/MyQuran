abstract class Quranstates {}

class intalStateQuran extends Quranstates {}

class sucsessStateQuran extends Quranstates {}

class loudStateQuran extends Quranstates {}

class erorrStateQuran extends Quranstates {
  final String error;
  erorrStateQuran(this.error);
}
