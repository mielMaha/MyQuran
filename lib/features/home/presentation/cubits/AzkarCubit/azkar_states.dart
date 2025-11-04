abstract class AzkarStates {}

class IntalStateAzkar extends AzkarStates {}

class SucsessStateAzkar extends AzkarStates {}

class LoudStateAzkar extends AzkarStates {}

class ErorrStateAzkar extends AzkarStates {
  final String error;
  ErorrStateAzkar(this.error);
}
