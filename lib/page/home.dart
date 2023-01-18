import 'package:flutter/material.dart';
import 'package:planb3/page/settings.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(height: 80),
              SizedBox(
                  child: Text("나를 바꾸는 한마디",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 28))),
              SizedBox(height: 40)
            ]),
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.grey[800],
          icon: const Icon(Icons.settings),
          alignment: Alignment.topLeft,
          iconSize: 30,
          onPressed: (() => {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Settings()),
                ),
              }),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const CircularProgressIndicator(
                    backgroundColor: Colors.black,
                    color: Colors.purple,
                    strokeWidth: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          child: IconButton(
                            color: Colors.grey[800],
                            icon: const Icon(
                              size: 22,
                              Icons.ios_share,
                              color: Color.fromARGB(255, 108, 15, 230),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        AutoSizeText(
                            '오늘도 파이팅,오늘도 파이팅,오늘도 파이팅오파이팅,오늘도 파이팅오파이팅,오늘도 파이팅오파이팅,오늘도 파이팅오파이팅,오늘도 파이팅오늘도',
                            style: TextStyle(fontFamily: 'Inter', fontSize: 22),
                            maxLines: 3),
                        Container(
                          height: 50,
                          child: Text(
                            '- reference -',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.hourglass_bottom, size: 22),
              SizedBox(
                width: 5,
              ),
              Text(
                '2 hr 30 min',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ],
      ),
    );
  }
}
