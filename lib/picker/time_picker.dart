import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:planb3/theme/maincolor.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TimePickerSpinner(
        is24HourMode: true,
        normalTextStyle: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
        highlightedTextStyle: const TextStyle(
          fontSize: 32,
          color: mainColor,
          fontWeight: FontWeight.bold,
        ),
        spacing: 30,
        itemHeight: 80,
        isForce2Digits: true,
        alignment: Alignment.center,
        onTimeChange: (time) {
          setState() {
            _dateTime = time;
          }
        });
  }
}
