import 'package:casos_app/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const initialRoute = 'login';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'login': (context) => const LoginScreen(),
  };
}
