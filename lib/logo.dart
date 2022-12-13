import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  const logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/logo.png',
          width: 80,
        ),
        Text(
          'TBIBI',
          style: TextStyle(
            color: Color.fromARGB(255, 58, 105, 120),
            fontWeight: FontWeight.w900,
            fontSize: 70,
          ),
        )
      ],
    );
  }
}
