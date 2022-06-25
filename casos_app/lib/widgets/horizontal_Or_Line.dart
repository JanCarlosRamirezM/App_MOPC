import 'package:casos_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HorizontalOrLine extends StatelessWidget {
  const HorizontalOrLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: const Divider(
              color: AppTheme.black54,
              height: 36,
            )),
      ),
      const Text(
        "OR",
        style: AppTheme.forgotPassword,
      ),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: const Divider(
              color: AppTheme.black54,
              height: 36,
            )),
      ),
    ]);
  }
}
