import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/helpers/constants.dart';

class SectionHead extends StatelessWidget {
  final String title;
  const SectionHead({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          "All",
          style: TextStyle(color: AppConstants.primaryColor, fontSize: 16),
        ),
      ],
    );
  }
}
