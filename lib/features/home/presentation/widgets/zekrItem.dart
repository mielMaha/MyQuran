import 'package:flutter/material.dart';
import 'package:quran2/features/home/data/models/AzkarModel.dart';

class Zekritem extends StatelessWidget {
  const Zekritem({super.key, required this.azkar, required this.index});
  final List<AzkarModel> azkar;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Row(
        children: [
          Container(width: 7, height: 68, color: Color(0xff863ED5)),

          Container(
            width: 318,

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
              title: Text('${azkar[index].title}'),
              subtitle: Text(
                textAlign: TextAlign.center,
                '${azkar[index].zekr}',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9543FF),
                ),
              ),
              trailing: Text(
                '${azkar[index].repeat}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
