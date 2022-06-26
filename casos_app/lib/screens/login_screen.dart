import 'package:casos_app/functions/funtions.dart';
import 'package:casos_app/theme/app_theme.dart';
import 'package:casos_app/ui/input_decorations.dart';
import 'package:casos_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(children: const [
          SizedBox(
            height: 60,
          ),
          LogoApp(widthCupulaBlue: 110, widthLogoMopc: 160),
          SizedBox(
            height: 40,
          ),
          _LoginForm(),
        ]),
      ),
    ));
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(children: [
              _buildNationalId(),
              _buildPassword(),
              _buildForgotPassword(),
              _buildButtonEnter(context),
              _buildHorizontalOrLine(),
              _buildTextCreateAccount(),
            ])));
  }

  Widget _buildNationalId() {
    return Container(
        margin: const EdgeInsets.only(bottom: 15.0),
        child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecorations.authInputDecoration(
                hintText: '01000000001',
                labelText: 'Cédula',
                prefixIcon: Icons.perm_identity),
            validator: LoginFuntions.validatorNationalId));
  }

  Widget _buildPassword() {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
          decoration: InputDecorations.authInputDecoration(
              hintText: '******',
              labelText: 'Contraseña',
              prefixIcon: Icons.lock_outline),
          validator: LoginFuntions.validatorPassword),
    );
  }

  Widget _buildForgotPassword() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      alignment: Alignment.centerRight,
      child: const Text(
        '¿Olvidó su contraseña?',
        style: AppTheme.forgotPassword,
      ),
    );
  }

  Widget _buildButtonEnter(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35.0),
      child: MaterialButton(
          minWidth: double.infinity,
          height: 50,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          disabledColor: Colors.grey,
          elevation: 0,
          color: AppTheme.primary,
          child: const Text(
            'Iniciar Sesión',
            style: AppTheme.buttonTextLogin,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'home');
          }),
    );
  }

  Widget _buildHorizontalOrLine() {
    return Container(
        margin: const EdgeInsets.only(top: 100.0),
        child: const HorizontalOrLine());
  }

  Widget _buildTextCreateAccount() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: const [
          Text(
            '¿No tienes una cuenta?',
            style: AppTheme.textCreateUser,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Crear una',
            style: AppTheme.textCreateUser2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
