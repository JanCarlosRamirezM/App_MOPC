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
            height: 10,
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
            child: Column(children: [
          _textFieldCorreo(),
          _sizedBox(),
          _textFieldPassword(),
          _sizedBox(),
          _textOlvidoPassword(),
          _sizedBox(),
          _buttonIngresar(),
          _sizedBox(),
          const HorizontalOrLine(),
          _textCrearCuenta(),
          _sizedBox(),
        ])));
  }

  MaterialButton _buttonIngresar() {
    return MaterialButton(
        minWidth: double.infinity,
        height: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: AppTheme.primary,
        child: const Text(
          'Ingresar',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {});
  }

  Widget _textOlvidoPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: const Text(
        '¿Olvidó su contraseña?',
        style: AppTheme.forgotPassword,
      ),
    );
  }

  TextField _textFieldPassword() {
    return TextField(
      decoration: InputDecorations.authInputDecoration(
          hintText: '*****',
          labelText: 'Contraseña',
          prefixIcon: Icons.lock_outline),
    );
  }

  TextField _textFieldCorreo() {
    return TextField(
      decoration: InputDecorations.authInputDecoration(
          hintText: 'Correo@correo.com ',
          labelText: 'Correo electrónico',
          prefixIcon: Icons.alternate_email_rounded),
    );
  }

  Widget _sizedBox() {
    return const SizedBox(
      height: 15,
    );
  }

  Widget _textCrearCuenta() {
    return const Text(
      'Crear una nueva cuenta ',
      style: AppTheme.textCreateUser,
    );
  }
}
