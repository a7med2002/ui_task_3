import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/helpers/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintTxt;
  final IconData sufixIcon;
  final bool isSecure;
  final String? Function(String?)? customValidator;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.hintTxt,
    required this.sufixIcon,
    this.isSecure = false,
    required this.controller,
    this.customValidator, required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: customValidator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        filled: true,
        fillColor: Colors.grey[100],
        hintText: hintTxt,
        hintStyle: TextStyle(color: Colors.grey),
        suffixIcon: Icon(sufixIcon, color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppConstants.primaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      obscureText: isSecure,
    );
  }
}
