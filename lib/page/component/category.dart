import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  Container item(
      {required Color color,
      required String emoji,
      required String text,
      required String number}) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            emoji,
            style: TextStyle(fontSize: 50),
          ),
          const SizedBox(height: 20),
          Text(
            text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 5),
          Text(number, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        item(
            color: Color(0xffF7F0DF),
            emoji: '\u{1f601}',
            text: '긍정',
            number: '167개'),
        const SizedBox(width: 18),
        item(
            color: Color.fromARGB(255, 241, 230, 227),
            emoji: '\u{1f3c0}',
            text: '건강',
            number: '27개'),
        const SizedBox(width: 18),
        item(
            color: Color.fromARGB(255, 194, 231, 243),
            emoji: '\u{1f4b0}',
            text: '부',
            number: '30개'),
        const SizedBox(width: 18),
        item(
            color: Color.fromARGB(255, 247, 218, 243),
            emoji: '\u{1f4DD}',
            text: '공부',
            number: '11개'),
        const SizedBox(width: 18),
        item(
            color: Color.fromARGB(255, 200, 234, 245),
            emoji: '\u{23f0}',
            text: '생활',
            number: '56개'),
        const SizedBox(width: 18),
        item(
            color: Color(0xFFF6EAC2),
            emoji: '\u{1f3b2}',
            text: '무작위',
            number: '167개'),
        const SizedBox(width: 18),
        item(
            color: Color.fromARGB(255, 169, 224, 139),
            emoji: '\u{1f4c1}',
            text: '나만의 문구',
            number: '4개')
      ],
    );
  }
}
