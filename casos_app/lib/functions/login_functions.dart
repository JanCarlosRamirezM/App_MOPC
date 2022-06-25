import 'package:flutter/material.dart';

class LoginFuntions {
//------------------------------
// Validate Email
//------------------------------
  static String? validatorEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(pattern);

    return regExp.hasMatch(value ?? '') ? null : 'El correo es invalido';
  }

//------------------------------
// Validate Password
//------------------------------
  static String? validatorPassword(String? value) {
    return (value != null && value.length >= 6)
        ? null
        : 'La contraseña debe ser mayor o igual a 6 caracteres';
  }
}
