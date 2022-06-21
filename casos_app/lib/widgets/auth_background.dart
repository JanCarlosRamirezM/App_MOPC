import 'package:casos_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.authBackgroundColor,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
