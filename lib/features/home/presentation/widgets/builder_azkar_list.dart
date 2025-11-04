import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/home/presentation/cubits/AzkarCubit/azkar_cubit.dart';
import 'package:quran2/features/home/presentation/cubits/AzkarCubit/azkar_states.dart';
import 'package:quran2/features/home/presentation/widgets/zekr_item.dart';

class Builderazkarlist extends StatelessWidget {
  const Builderazkarlist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzkarCubit, AzkarStates>(
      builder: (context, state) {
        var cubit = BlocProvider.of<AzkarCubit>(context);
        var azkar = cubit.azkarList;
        if (state is SucsessStateAzkar)
          return SizedBox(
            height: 380,
            child: ListView.builder(
              itemBuilder:
                  (context, index) => Zekritem(index: index, azkar: azkar),
              itemCount: azkar!.length,
            ),
          );
        if (state is ErorrStateAzkar)
          return Text('${state.error}');
        else
          return CircularProgressIndicator();
      },
    );
  }
}
