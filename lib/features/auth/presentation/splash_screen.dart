import 'package:flutter/material.dart';
import 'package:quran2/features/home/data/Apis/timeApi.dart';

import '../../home/data/Apis/Allsurah.dart';
import '../../home/data/models/surah.dart';
import '../../home/data/models/timesModel.dart';
import '../../home/presentation/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Image(
            image: AssetImage('assets/splash.png'),
            width: 149,
            height: 196,
            fit: BoxFit.cover,
          ),
          Text('My Quran', style: Theme.of(context).textTheme.labelLarge),
          Text(
            'Baca Al-Quran Degan Mudah',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Color(0xffA8A8A8),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff9543FF)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Text(
              'Baca Sekarang',
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
  }
}
