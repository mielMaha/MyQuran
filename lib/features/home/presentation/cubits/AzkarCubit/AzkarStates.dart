abstract class Azkarstates {}

class intalStateAzkar extends Azkarstates {}

class sucsessStateAzkar extends Azkarstates {}

class loudStateAzkar extends Azkarstates {}

class erorrStateAzkar extends Azkarstates {
  final String error;
  erorrStateAzkar(this.error);
}
