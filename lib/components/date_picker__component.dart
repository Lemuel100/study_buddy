import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

class DatePickerComponent extends StatelessWidget {
  const DatePickerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 4, 61, 108)),
      child: DatePicker(
        DateTime.now(),
        initialSelectedDate: DateTime.now(),
        height: 80,
        width: 50,
        selectedTextColor: Color.fromARGB(255, 4, 61, 108),
        selectionColor: Theme.of(context).scaffoldBackgroundColor,
        dateTextStyle:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        daysCount: 7,
      ),
    );
  }
}