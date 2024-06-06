import 'package:flutter/material.dart';

import '../core/utils/colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.onSubmit,
  });
  final Function(String value) onSubmit;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController controller = TextEditingController();
  String? taskName;
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void onSumbit(String value) {
    setState(() {
      if (value.isNotEmpty || value.trim().isNotEmpty) {
        taskName = value;
      } else {
        taskName = 'Null value';
      }

      debugPrint('task Name = $taskName');
    });
    widget.onSubmit(taskName!);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kDarkBlueColor,
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Enter Task',
        hintStyle: const TextStyle(
          color: kDarkBlueColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
          borderSide: const BorderSide(
            color: kDarkBlueColor,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
          borderSide: const BorderSide(
            color: kDarkBlueColor,
            width: 2,
          ),
        ),
      ),
      onSubmitted: onSumbit,
    );
  }
}
