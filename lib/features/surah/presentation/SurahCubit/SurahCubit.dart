import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/surah/data/model/SurahModel.dart';
import 'package:quran2/features/surah/data/surahApi.dart';
import 'package:quran2/features/surah/presentation/SurahCubit/SurahStates.dart';

class SurahCubit extends Cubit<Surahstates> {
  SurahCubit() : super(intalStateSurah());
  SurahModel? surah;

  getCubitSurah(int n) async {
    emit(loudStateSurah());
    try {
      surah = await Surahapi().getSurah(n);
      emit(sucsessStateSurah());
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          emit(
            erorrStateSurah(
              'Connection timed out. Please check your internet.',
            ),
          );
          break;
        case DioExceptionType.sendTimeout:
          emit(erorrStateSurah('Request send timeout. Try again.'));
          break;
        case DioExceptionType.receiveTimeout:
          emit(erorrStateSurah('Response took too long. Please retry.'));
          break;
        case DioExceptionType.badCertificate:
          emit(erorrStateSurah('Bad certificate. Secure connection failed.'));
          break;
        case DioExceptionType.badResponse:
          emit(
            erorrStateSurah('Server error: ${e.response?.statusCode ?? ''}'),
          );
          break;
        //hhhh
        case DioExceptionType.cancel:
          emit(erorrStateSurah('Request was cancelled.'));
          break;
        case DioExceptionType.connectionError:
          emit(erorrStateSurah('No internet connection.'));
          break;
        case DioExceptionType.unknown:
          emit(erorrStateSurah('Unexpected error occurred.'));
          break;
      }
    } catch (e) {
      emit(erorrStateSurah('Something went wrong: $e'));
    }
  }
}
