import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quran2/features/home/presentation/cubits/TimeCubit/time_states.dart';

import '../../data/models/times_model.dart';
import '../jdwal_sholat_screen.dart';
import '../cubits/TimeCubit/time_cubit.dart';

class Timedetails extends StatelessWidget {
  const Timedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimeCubit, TimeStates>(
      builder: (BuildContext context, TimeStates state) {
        var cubit = BlocProvider.of<TimeCubit>(context);
        TimeModel? timeModel = cubit.timeModel;
        if (state is SucsessStateTime)
          return SizedBox(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Quran',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Color(0xff9543FF),
                  ),
                ),
                Text(
                  'Baca Al-Quran Degan Mudah',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xff000000),
                  ),
                ),
                //HH:mm
                Text(
                  '${DateFormat('HH:mm').format(DateTime.now())}',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: Color(0xff232323),
                  ),
                ),
                Text(
                  '${timeModel!.month} ${timeModel!.day}, ${timeModel!.year} AH',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: Color(0xff232323),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff9543FF),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => Jadwalsholat(
                              timeModel: timeModel!,
                              frist: cubit.findFrist(),
                            ),
                      ),
                    );
                  },
                  child: Text(
                    '${cubit.findFrist().key}${DateFormat(' HH:mm').format(cubit.findFrist().value)}',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        if (state is ErorrStateTime)
          return Text('${state.error}');
        else
          return CircularProgressIndicator();
      },
    );
  }
}
