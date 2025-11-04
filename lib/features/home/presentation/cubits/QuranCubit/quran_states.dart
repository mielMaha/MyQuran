abstract class QuranStates {}

class IntalStateQuran extends QuranStates {}

class SucsessStateQuran extends QuranStates {}

class LoudStateQuran extends QuranStates {}

class ErorrStateQuran extends QuranStates {
  final String error;
  ErorrStateQuran(this.error);
}
