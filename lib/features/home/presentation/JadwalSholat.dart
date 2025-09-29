import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/models/timesModel.dart';

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
                child: Text('${timeModel.readable}'),
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.nightlight, color: Colors.white),
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
                      leading: Icon(Icons.nightlight, color: Colors.white),
                      title: Text("Asr", style: TextStyle(color: Colors.white)),

                      trailing: Text(
                        '${timeModel.timings["Asr"]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.nightlight, color: Colors.white),
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
                      leading: Icon(Icons.nightlight, color: Colors.white),
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
                      leading: Icon(Icons.nightlight, color: Colors.white),
                      title: Text(
                        "Fajr",
                        style: TextStyle(color: Colors.white),
                      ),

                      trailing: Text(
                        '${timeModel.timings["Fajr"]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 160,
            top: 180,
            child: Text(
              "${frist.key} ${DateFormat("HH:mm").format(frist.value)}",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
