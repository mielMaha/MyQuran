import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/models/times_model.dart';

class Jadwalsholat extends StatelessWidget {
  const Jadwalsholat({super.key, required this.timeModel, required this.frist});
  final TimeModel timeModel;
  final MapEntry frist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xff180B37),
          ),
          Image(
            image: AssetImage('assets/Prayer.png'),
            width: double.infinity,
            height: 330,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 330,
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Text(
                  '${timeModel.readable}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.nightlight, color: Colors.white),
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text(
                        "Fajr",
                        style: TextStyle(color: Colors.white),
                      ),

                      trailing: Text(
                        '${timeModel.timings["Fajr"]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.sunny, color: Colors.white),
                      title: Text("Asr", style: TextStyle(color: Colors.white)),

                      trailing: Text(
                        '${timeModel.timings["Asr"]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.sunny_snowing, color: Colors.white),
                      title: Text(
                        "Dhuhr",
                        style: TextStyle(color: Colors.white),
                      ),

                      trailing: Text(
                        '${timeModel.timings["Dhuhr"]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.cloud, color: Colors.white),
                      title: Text(
                        "Sunset",
                        style: TextStyle(color: Colors.white),
                      ),

                      trailing: Text(
                        '${timeModel.timings["Sunset"]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Image(
                        image: AssetImage('assets/cloudy-night.png'),
                        width: 24,
                        height: 24,
                      ),
                      title: Text(
                        "Isha",
                        style: TextStyle(color: Colors.white),
                      ),

                      trailing: Text(
                        '${timeModel.timings["Isha"]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 120,
            top: 150,
            child: Text(
              "${frist.key} ${DateFormat("HH:mm").format(frist.value)}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
