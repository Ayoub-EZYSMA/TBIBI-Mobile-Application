import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';

class findDoctor extends StatelessWidget {
  const findDoctor({super.key});

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
            'Find your doctor',
          ),
          shadowColor: Color.fromARGB(255, 58, 105, 120),
          backgroundColor: Color.fromARGB(250, 250, 0, 101),
        ),
        body: SafeArea(
            child: ListView(children: [
          Row(
            children: [
              Icon(
                Icons.document_scanner_rounded,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              Text(
                ' Choose the field',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 58, 105, 120),
                ),
              ),
              Padding(padding: EdgeInsets.all(30)),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'images/primarycare.png',
                height: 190,
                width: 190,
              ),
              Spacer(),
              Image.asset(
                'images/dentist.png',
                height: 190,
                width: 190,
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'images/obgyn.png',
                height: 190,
                width: 190,
              ),
              Spacer(),
              Image.asset(
                'images/dermatogolist.png',
                height: 190,
                width: 190,
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'images/psychiatrist.png',
                height: 190,
                width: 190,
              ),
              Spacer(),
              Image.asset(
                'images/eyedoctor.png',
                height: 190,
                width: 190,
              ),
            ],
          )
        ])));
  }
}
