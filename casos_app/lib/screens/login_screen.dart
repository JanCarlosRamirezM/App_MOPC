import 'package:casos_app/functions/funtions.dart';
import 'package:casos_app/theme/app_theme.dart';
import 'package:casos_app/ui/input_decorations.dart';
import 'package:casos_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

String title = 'Iniciar sesión';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 15,
          ),
          LogoApp(
            title: title,
          ),
          const SizedBox(
            height: 50,
          ),
          const _LoginForm(),
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
              _buildEmail(),
              _buildPassword(),
              _buildForgotPassword(),
              _buildButtonEnter(context),
              _buildHorizontalOrLine(),
              _buildTextCreateAccount(),
            ])));
  }

  Widget _buildEmail() {
    return Container(
        margin: const EdgeInsets.only(bottom: 15.0),
        child: TextFormField(
            decoration: InputDecorations.authInputDecoration(
                hintText: 'Correo@correo.com ',
                labelText: 'Correo electrónico',
                prefixIcon: Icons.alternate_email_rounded),
            validator: LoginFuntions.validatorEmail));
  }

  Widget _buildPassword() {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
          decoration: InputDecorations.authInputDecoration(
              hintText: '*****',
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
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          disabledColor: Colors.grey,
          elevation: 0,
          color: AppTheme.primary,
          child: const Text(
            'Ingresar',
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
      child: const Text(
        'Crear una nueva cuenta ',
        style: AppTheme.textCreateUser,
      ),
    );
  }
}
