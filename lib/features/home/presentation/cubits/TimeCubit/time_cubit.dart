import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../data/datasources/time_api.dart';
import '../../../data/models/times_model.dart';
import 'time_states.dart';

class TimeCubit extends Cubit<TimeStates> {
  TimeModel? timeModel;
  TimeCubit() : super(IntalStateTime());
  getCubitTime() async {
    emit(LoudStateTime());
    try {
      timeModel = await TimeApi().getTimes();
      emit(SucsessStateTime());
    } catch (e) {
      emit(ErorrStateTime(e.toString()));
    }
  }

  MapEntry findFrist() {
    DateTime now = DateTime.now();
    var x =
        timeModel!.timings.entries.map((e) {
          var key = DateFormat('HH:mm').parse(e.value);
          var value = DateTime(
            now.year,
            now.month,
            now.day,
            key.hour,
            key.minute,
          );
          return MapEntry(e.key, value);
        }).toList();
    x.sort((a, b) => a.value.compareTo(b.value));
    MapEntry next = x.firstWhere(
      (element) => element.value.isAfter(now),
      orElse: () => x.first,
    );
    return next;
  }
}
