abstract class TimeStates {}

class IntalStateTime extends TimeStates {}

class SucsessStateTime extends TimeStates {}

class LoudStateTime extends TimeStates {}

class ErorrStateTime extends TimeStates {
  final String error;
  ErorrStateTime(this.error);
}
