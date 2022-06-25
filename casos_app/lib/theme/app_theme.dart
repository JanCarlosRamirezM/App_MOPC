import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(243, 167, 18, 1);
  static const Color darkYellow = Color.fromARGB(255, 214, 146, 10);
  static const Color authBackgroundColor = Colors.black;
  static const Color black54 = Colors.black54;

  static const TextStyle forgotPassword =
      TextStyle(color: black54, fontSize: 13);

  static const TextStyle buttonTextLogin =
      TextStyle(color: Colors.white, fontSize: 15);

  static const TextStyle textCreateUser =
      TextStyle(color: black54, fontSize: 14, fontWeight: FontWeight.bold);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme:
          const AppBarTheme(color: primary, elevation: 0, centerTitle: true),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));

  static const TextStyle loginTitle =
      TextStyle(color: black54, fontWeight: FontWeight.bold, fontSize: 30);
}
