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
        : 'La contraseña debe ser mayor a 5 caracteres';
  }

  //------------------------------
// Validate National Id
//------------------------------
  static String? validatorNationalId(String? value) {
    return (value != null && value.length == 10)
        ? null
        : 'Formato de Cédula incorrecto';
  }
}
