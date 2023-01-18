import 'package:flutter/material.dart';
import 'package:planb3/page/home.dart';
import 'package:planb3/button/switch_on_off.dart';
import 'package:planb3/theme/maincolor.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Action'),
        backgroundColor: Colors.white,
        elevation: 5,
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
                  MaterialPageRoute(builder: (context) => const HomePage()),
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
      body: Column(
        children: [
          AlarmList(),
        ],
      ),
    );
  }
}

class AlarmList extends StatefulWidget {
  const AlarmList({super.key});

  @override
  State<AlarmList> createState() => _AlarmListState();
}

class _AlarmListState extends State<AlarmList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    // ignore: prefer_const_constructors
                    Icon(
                      Icons.access_alarm,
                      size: 18,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      '5:00 PM',
                      style: TextStyle(color: mainColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("\u{1f601}  긍정", style: TextStyle(fontSize: 25)),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
