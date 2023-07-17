import 'package:flutter/material.dart';
import 'package:planb3/page/setalarm.dart';
import 'package:planb3/page/custominput.dart';
import 'package:planb3/theme/maincolor.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextList();
  }
}

class TextList extends StatefulWidget {
  const TextList({super.key});

  @override
  State<TextList> createState() => _TextListState();
}

class _TextListState extends State<TextList> {
  String _enteredText = '';
  List<SizedBox> textCard = [
    SizedBox(
      height: 130,
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 300,
                      child: AutoSizeText(
                          'At et aliquet porttitor velit habitasse sed ac convallis viverra. Consequat sed morbi etiam.',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 10),
                          maxLines: 3),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CustomInput()),
            );
          });
        },
        backgroundColor: Colors.white,
        elevation: 5,
        child: const Icon(Icons.add_circle_outline, color: mainColor),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: IconButton(
          color: Colors.grey[800],
          icon: const Icon(Icons.arrow_back_rounded),
          iconSize: 30,
          onPressed: (() => {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SetAlarmPage()),
                ),
              }),
        ),
        title: const Text(
          "나만의 문구 만들기",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter'),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: textCard,
      ),
    );
  }
}
