import 'package:flutter/material.dart';
import 'package:tbibi/widgets/button.dart';

class emergency extends StatelessWidget {
  const emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
            fontWeight: FontWeight.bold),
        title: const Text(
          'Emergency',
        ),
        shadowColor: Color.fromARGB(255, 58, 105, 120),
        backgroundColor: Color.fromARGB(250, 250, 0, 101),
      ),
      body: SafeArea(
          child: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/ambulance.gif',
              width: 400,
            ),
          ],
        ),
        buttonc1(),
        buttonc3(),
        buttonc4(),
        buttonc5(),
        buttonc6(),
        buttonc7(),
        buttonc8(),
        buttonc9(),
        buttonc10(),
      ])),
    );
  }
}
