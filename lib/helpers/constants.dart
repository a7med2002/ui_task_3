import 'package:flutter/material.dart';

class AppConstants {
  static const Color primaryColor = Colors.blueAccent;
  static const Color lightPrimaryColor = Color(0xFFE3F2FD);
  static const TextStyle primaryNumberTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );

  static const double space = 16;

  // static const Image menuIcon = Image(
  //   image: AssetImage("images/menu.png"),
  //   width: 24,
  //   height: 24,
  // );
  static const String defaultImage = "images/man.png";
  
  static const Icon addIcon = Icon(Icons.add, color: Colors.white, size: 14);
}

void showMessage(String title, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(title, style: TextStyle(color: Colors.white)),
      backgroundColor: AppConstants.primaryColor,
    ),
  );
}
