import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../data/Apis/timeApi.dart';
import '../../../data/models/timesModel.dart';
import 'TimeStates.dart';

class TimeCubit extends Cubit<TimeStates> {
  TimeModel? timeModel;
  TimeCubit() : super(intalStateTime());
  getCubitTime() async {
    emit(loudStateTime());
    try {
      timeModel = await TimeApi().getTimes();
      emit(sucsessStateTime());
    } catch (e) {
      emit(erorrStateTime(e.toString()));
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
