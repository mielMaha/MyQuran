import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/home/presentation/cubits/QuranCubit/quran_states.dart';

import '../../../data/datasources/quran_api.dart';
import '../../../data/models/surah_model.dart';

class QuranCubit extends Cubit<QuranStates> {
  QuranCubit() : super(IntalStateQuran());
  List<Surah>? QuranList;
  getQuranData() async {
    emit(LoudStateQuran());

    try {
      QuranList = await QuranApi().getQuran();
      emit(SucsessStateQuran());
    } catch (e) {
      emit(ErorrStateQuran(e.toString()));
    }
  }
}
