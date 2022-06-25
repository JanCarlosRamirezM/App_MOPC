import 'package:casos_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LogoApp extends StatelessWidget {
  final String title;

  const LogoApp({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Image.asset('assets/cupulaBlue.png', width: 80),
          const SizedBox(
            height: 5,
          ),
          Image.asset('assets/logomopc.png', width: 100),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: AppTheme.loginTitle,
          ),
        ],
      ),
    );
  }
}
