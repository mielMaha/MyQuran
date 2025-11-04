import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/home/presentation/cubits/QuranCubit/quran_cubit.dart';
import 'package:quran2/features/home/presentation/cubits/QuranCubit/quran_states.dart';

import '../../data/models/surah_model.dart';
import 'quran_item.dart';

class BuilderQuranList extends StatelessWidget {
  const BuilderQuranList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit, QuranStates>(
      builder: (context, state) {
        var cubit = BlocProvider.of<QuranCubit>(context);
        var surah = cubit.QuranList;
        if (state is SucsessStateQuran)
          return SizedBox(
            height: 380,
            child: ListView.builder(
              itemBuilder:
                  (context, index) => QuranItem(surah: surah!, index: index),
              itemCount: surah!.length,
            ),
          );
        if (state is ErorrStateQuran)
          return Text('${state.error}');
        else
          return CircularProgressIndicator();
      },
    );
  }
}
