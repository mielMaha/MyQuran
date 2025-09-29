import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/auth/presentation/splash_screen.dart';
import 'package:quran2/features/home/presentation/cubits/QuranCubit/QuranCubit.dart';

import 'features/home/presentation/cubits/AzkarCubit/AzkarCubit.dart';
import 'features/home/presentation/cubits/TimeCubit/timeCubit.dart';

void main() {
  runApp(const Quran());
}

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TimeCubit()..getCubitTime()),
        BlocProvider(create: (context) => QuranCubit()..getCubitQuran()),
        BlocProvider(create: (context) => Azkarcubit()..getCubitAzkar()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            labelLarge: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Color(0xff9543FF),
            ),
          ),
        ),
        //maha samer
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
