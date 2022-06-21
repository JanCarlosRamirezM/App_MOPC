import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(243, 167, 18, 1);
  static const Color authBackgroundColor = Colors.black;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme:
          const AppBarTheme(color: primary, elevation: 0, centerTitle: true),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));

  static const TextStyle loginTitle = TextStyle(
      color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 30);
}
