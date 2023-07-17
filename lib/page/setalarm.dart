import 'package:flutter/material.dart';
import 'package:planb3/page/component/category.dart';
import 'package:planb3/page/settings.dart';
import 'package:planb3/page/customtext.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:planb3/theme/maincolor.dart';
import 'package:planb3/theme/bgcolor.dart';
import 'package:planb3/button/switch_on_off.dart';
import 'package:planb3/picker/time_picker.dart';

class SetAlarmPage extends StatelessWidget {
  const SetAlarmPage({super.key});

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
                  MaterialPageRoute(builder: (context) => const Settings()),
                ),
              }),
        ),
        title: Text(
          "설정",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter'),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: bgColor,
        child: Column(
          children: [
            const SizedBox(height: 50),
            const TimePicker(),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('공휴일 및 주말에 알람 끄기',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              letterSpacing: 0)),
                      SizedBox(
                        height: 8,
                      ),
                      const Text('대체 공휴일이나 임시 공휴일 포함 안 함',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              letterSpacing: 0)),
                    ],
                  ),
                  OnOffSwitch(
                    value: true,
                    onChanged: (bool value) {},
                    activeColor: mainColor,
                    activeTextColor: Colors.white,
                    activeText: 'ON',
                    inactiveText: 'OFF',
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(height: 180, child: Category()),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 89, 122, 149),
                      fixedSize: Size.fromHeight(50),
                    ),
                    child: const Text(
                      '나만의 문구만들기',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const CustomText()),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: mainColor,
                      fixedSize: Size.fromHeight(50),
                    ),
                    child: const Text(
                      '저장',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Settings()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
