import 'package:flutter/material.dart';

import '../core/utils/colors.dart';

class TimeRowwidget extends StatefulWidget {
  const TimeRowwidget({
    super.key,
    required this.onTimeSelect,
  });
  final Function(TimeOfDay time) onTimeSelect;
  @override
  State<TimeRowwidget> createState() => _TimeRowwidgetState();
}

class _TimeRowwidgetState extends State<TimeRowwidget> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          selectedTime.format(context),
          style: const TextStyle(
            color: kDarkBlueColor,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton.icon(
          onPressed: () async {
            final TimeOfDay? timeOfDay = await showTimePicker(
              context: context,
              initialTime: selectedTime,
              initialEntryMode: TimePickerEntryMode.dial,
              builder: (BuildContext context, Widget? child) {
                return Theme(
                  data: ThemeData(
                    timePickerTheme: const TimePickerThemeData(
                      backgroundColor: kGreyColor,
                      dialHandColor: kDarkBlueColor,
                      dialBackgroundColor: kDarkGreyColor,
                      // hourMinuteShape: CircleBorder(),
                    ),
                    colorScheme: const ColorScheme.light(
                      primary: kDarkBlueColor, // header background color
                      onPrimary: kGreyColor, // header text color
                      onSurface: kDarkBlueColor, // body text color
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style: TextButton.styleFrom(
                        backgroundColor: kMainColor, // button text color
                      ),
                    ),
                  ),
                  child: child!,
                );
              },
            );
            if (timeOfDay != null) {
              setState(() {
                selectedTime = timeOfDay;
                widget.onTimeSelect(selectedTime);
              });
            }
          },
          label: const Text(
            'Pick your time',
            style: TextStyle(
              color: kDarkBlueColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          icon: const Icon(
            Icons.access_time,
            color: kDarkBlueColor,
            size: 24,
          ),
          iconAlignment: IconAlignment.end,
        ),
      ],
    );
  }
}
