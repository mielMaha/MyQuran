import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/home/presentation/cubits/QuranCubit/QuranCubit.dart';
import 'package:quran2/features/home/presentation/cubits/QuranCubit/QuranStates.dart';

import 'QuranItem.dart';

class BuilderQuranList extends StatelessWidget {
  const BuilderQuranList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit, Quranstates>(
      builder: (context, state) {
        var cubit = BlocProvider.of<QuranCubit>(context);
        var surah = cubit.allSurah;
        if (state is sucsessStateQuran)
          return SizedBox(
            height: 380,
            child: ListView.builder(
              itemBuilder:
                  (context, index) => QuranItem(surah: surah!, index: index),
              itemCount: surah!.length,
            ),
          );
        if (state is erorrStateQuran)
          return Text('${state.error}');
        else
          return CircularProgressIndicator();
      },
    );
  }
}
