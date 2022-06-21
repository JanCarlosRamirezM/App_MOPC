import 'package:casos_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(children: [_loginTitle()]),
        ),
      ),
    ));
  }

  Widget _loginTitle() {
    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 5)),
        Image.asset('assets/cupulaBlue.png', width: 80),
        const Padding(padding: EdgeInsets.only(top: 5)),
        Image.asset('assets/logomopc.png', width: 100),
        const Padding(padding: EdgeInsets.only(top: 5)),
        const Text(
          'Iniciar sesión',
          style: AppTheme.loginTitle,
        ),
      ],
    );
  }
}


    //  const Positioned(
    //         bottom: 5,
    //         child: Text(
    //           'Iniciar sesión',
    //           style: AppTheme.loginTitle,
    //         ))