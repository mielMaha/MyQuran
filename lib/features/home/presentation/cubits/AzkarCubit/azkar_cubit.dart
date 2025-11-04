import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/home/presentation/cubits/AzkarCubit/azkar_states.dart';

import '../../../data/datasources/azkar_api.dart';
import '../../../data/models/azkar_model.dart';

class AzkarCubit extends Cubit<AzkarStates> {
  AzkarCubit() : super(IntalStateAzkar());
  List<AzkarModel>? azkarList;

  getCubitAzkar() async {
    emit(LoudStateAzkar());
    try {
      List<AzkarModel> x1 = await AzkarApi().getAzkar(
        'https://ahegazy.github.io/muslimKit/json/PostPrayer_azkar.json',
      );

      List<AzkarModel> x2 = await AzkarApi().getAzkar(
        'https://ahegazy.github.io/muslimKit/json/azkar_sabah.json',
      );
      List<AzkarModel> x3 = await AzkarApi().getAzkar(
        'https://ahegazy.github.io/muslimKit/json/azkar_massa.json',
      );
      azkarList = x1 + x2 + x3;
      emit(SucsessStateAzkar());
    } catch (e) {
      emit(ErorrStateAzkar(e.toString()));
    }
  }
}
