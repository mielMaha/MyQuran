import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/home/presentation/cubits/AzkarCubit/AzkarCubit.dart';
import 'package:quran2/features/home/presentation/cubits/AzkarCubit/AzkarStates.dart';
import 'package:quran2/features/home/presentation/widgets/zekrItem.dart';

class Builderazkarlist extends StatelessWidget {
  const Builderazkarlist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Azkarcubit, Azkarstates>(
      builder: (context, state) {
        var cubit = BlocProvider.of<Azkarcubit>(context);
        var azkar = cubit.azkarList;
        if (state is sucsessStateAzkar)
          return SizedBox(
            height: 380,
            child: ListView.builder(
              itemBuilder:
                  (context, index) => Zekritem(index: index, azkar: azkar),
              itemCount: azkar!.length,
            ),
          );
        if (state is erorrStateAzkar)
          return Text('${state.error}');
        else
          return CircularProgressIndicator();
      },
    );
  }
}
