import 'package:flutter/material.dart';

class costomSurahItem extends StatelessWidget {
  const costomSurahItem({
    super.key,
    required this.ar,
    required this.en,
    required this.i,
  });

  @override
  final String ar;
  final String en;
  final int i;
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 327,
          height: 47,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff863ED50D),
          ),
          child: CircleAvatar(
            radius: 14,
            child: Text('$i'),
            backgroundColor: Colors.deepPurpleAccent,
          ),
        ),
        Text(
          '$ar',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        Text(
          '$en',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
