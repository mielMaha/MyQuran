import 'package:flutter/material.dart';
import 'package:quran2/features/home/data/models/azkar_model.dart';

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
            child: ExpansionTile(
              backgroundColor: Colors.white,
              showTrailingIcon: false,

              title: Text(azkar[index].title, style: TextStyle(fontSize: 20)),
              leading: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/number.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    azkar[index].repeat.toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              subtitle: Text(
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                azkar[index].zekr,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, color: Colors.deepPurpleAccent),
              ),

              children: [
                Text(
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  azkar[index].zekr,
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
