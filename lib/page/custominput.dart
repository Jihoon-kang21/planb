import 'package:flutter/material.dart';
import 'package:planb3/page/customtext.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({super.key});

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  String _enteredText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: IconButton(
          color: Colors.grey[800],
          icon: const Icon(Icons.arrow_back_rounded),
          iconSize: 30,
          onPressed: (() => {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CustomText()),
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
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: TextField(
          onChanged: (value) {
            setState(() {
              _enteredText = value;
            });
          },
          cursorColor: Colors.black,
          maxLines: null,
          decoration: InputDecoration.collapsed(hintText: " "),
          style: TextStyle(height: 1.5),
        ),
      ),
    );
  }
}
