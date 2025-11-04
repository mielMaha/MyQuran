import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran2/features/surah/presentation/SurahCubit/surah_cubit.dart';
import 'package:quran2/features/surah/presentation/SurahCubit/surah_states.dart';

import '../../../surah/presentation/surah_details_screen.dart';
import '../../data/models/surah_model.dart';

class QuranItem extends StatelessWidget {
  const QuranItem({super.key, required this.surah, required this.index});
  final List<Surah> surah;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17),
      child: BlocConsumer<SurahCubit, Surahstates>(
        builder:
            (BuildContext context, state) => InkWell(
              onTap: () async {
                await BlocProvider.of<SurahCubit>(
                  context,
                ).getCubitSurah(index + 1);
              },
              child: Row(
                children: [
                  Container(width: 7, height: 68, color: Color(0xff863ED5)),
                  Container(
                    width: 318,
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Color(0xffFCFCFC),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 0.6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/number.png'),
                        child: Text('${index + 1}'),
                      ),
                      title: Text('${surah[index].surahName}'),
                      subtitle: Text(
                        '${surah[index].revelationPlace} ${surah[index].totalAyah}',
                      ),
                      trailing: Text(
                        '${surah[index].surahNameArabic}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff863ED5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        listener: (BuildContext context, Object? state) {
          var cubit = context.read<SurahCubit>();
          if (state is sucsessStateSurah)
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SurahDetails(surahModel: cubit.surah!),
              ),
            );
        },
      ),
    );
  }
}
