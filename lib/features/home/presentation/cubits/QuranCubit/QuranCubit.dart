import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/home/presentation/cubits/QuranCubit/QuranStates.dart';

import '../../../data/Apis/Allsurah.dart';
import '../../../data/models/surah.dart';

class QuranCubit extends Cubit<Quranstates> {
  QuranCubit() : super(intalStateQuran());
  List<Surah>? allSurah;
  getCubitQuran() async {
    emit(loudStateQuran());
    try {
      allSurah = await Allsurahapi().getSurah();
      emit(sucsessStateQuran());
    } catch (e) {
      emit(erorrStateQuran(e.toString()));
    }
  }
}
