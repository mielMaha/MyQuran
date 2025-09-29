import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/home/presentation/widgets/BuilderAzkarList.dart';
import 'package:quran2/features/home/presentation/widgets/BuilderQuranList.dart';
import 'package:quran2/features/home/presentation/widgets/timeDetails.dart';
import 'package:quran2/features/surah/presentation/SurahCubit/SurahCubit.dart';

import '../data/models/surah.dart';
import '../data/models/timesModel.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  bool isQuran = true;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocProvider(
          create: (BuildContext context) => SurahCubit(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22, left: 24),
                child: Row(
                  children: [
                    Timedetails(),
                    Image(
                      image: AssetImage('assets/img.png'),
                      width: 155,
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 44),
              Row(
                children: [
                  SizedBox(width: 17),
                  Text(
                    'Kategori',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff232323),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isQuran ? Color(0xff9543FF) : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        isQuran = true;
                      });
                    },
                    child: Text(
                      'quran ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: isQuran ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isQuran ? Colors.white : Color(0xff9543FF),
                    ),
                    onPressed: () {
                      setState(() {
                        isQuran = false;
                      });
                    },
                    child: Text(
                      'Azkar ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: isQuran ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              isQuran ? BuilderQuranList() : Builderazkarlist(),
            ],
          ),
        ),
      ),
    );
  }
}
