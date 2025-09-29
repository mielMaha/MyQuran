import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/home/presentation/cubits/AzkarCubit/AzkarStates.dart';

import '../../../data/Apis/AzkarApi.dart';
import '../../../data/models/AzkarModel.dart';

class Azkarcubit extends Cubit<Azkarstates> {
  Azkarcubit() : super(intalStateAzkar());
  List<AzkarModel>? azkarList;
  getCubitAzkar() async {
    emit(loudStateAzkar());
    try {
      azkarList = await AzkarApi().getAzkar();
      emit(sucsessStateAzkar());
    } catch (e) {
      emit(erorrStateAzkar(e.toString()));
    }
  }
}
