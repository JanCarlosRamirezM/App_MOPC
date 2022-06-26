import 'package:flutter/material.dart';

class LogoApp extends StatelessWidget {
  final double widthCupulaBlue;
  final double widthLogoMopc;

  const LogoApp(
      {Key? key, required this.widthCupulaBlue, required this.widthLogoMopc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Image.asset('assets/cupulaBlue.png', width: widthCupulaBlue),
          const SizedBox(
            height: 5,
          ),
          Image.asset('assets/logomopc.png', width: widthLogoMopc),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
