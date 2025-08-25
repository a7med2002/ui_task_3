import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/helpers/constants.dart';

class CustomAuthButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final IconData icon;
  const CustomAuthButton({super.key, required this.title, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14),
        backgroundColor: AppConstants.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
      ),
      child: Row(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
          Icon(icon, color: Colors.white),
        ],
      ),
    );
  }
}
