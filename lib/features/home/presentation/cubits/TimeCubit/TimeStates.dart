abstract class TimeStates {}

class intalStateTime extends TimeStates {}

class sucsessStateTime extends TimeStates {}

class loudStateTime extends TimeStates {}

class erorrStateTime extends TimeStates {
  final String error;
  erorrStateTime(this.error);
}
