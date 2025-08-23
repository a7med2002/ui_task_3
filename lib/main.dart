import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/screens/splash.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      title: 'Flutter Ui Task 3',
      home: SplashScreen(),
    ),
  );
}
