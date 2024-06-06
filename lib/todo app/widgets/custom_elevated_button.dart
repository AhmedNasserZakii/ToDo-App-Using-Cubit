import 'package:flutter/material.dart';

import '../core/utils/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
  });
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: kDarkGreyColor,
        fixedSize: Size(
          MediaQuery.of(context).size.width / 2,
          MediaQuery.of(context).size.height / 20,
        ),
      ),
      child: const Text(
        'Add Task',
        style: TextStyle(
          color: kDarkBlueColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
