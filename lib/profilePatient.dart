import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tbibi/AsAdoctor.dart';
import 'package:tbibi/logInPatient.dart';
import 'package:tbibi/main.dart';
import 'package:tbibi/patients.dart';
import 'package:tbibi/profileDoctor.dart';
import 'package:tbibi/find_your_doctor.dart';
import 'package:tbibi/rendez_vous.dart';
import 'package:tbibi/my_charts.dart';

class logInPatient extends StatelessWidget {
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
            'TBIBI',
          ),
          shadowColor: Color.fromARGB(255, 58, 105, 120),
          backgroundColor: Color.fromARGB(250, 250, 0, 101)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                margin: EdgeInsets.only(top: 30, bottom: 25),
                child: Text(
                  '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(249, 255, 255, 255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(250, 250, 0, 101),
                  image: DecorationImage(
                      image: AssetImage('images/profilephoto.png')),
                  shape: BoxShape.circle,
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              title: const Text('Find your doctor'),
              textColor: Color.fromARGB(255, 58, 105, 120),
              focusColor: Color.fromARGB(250, 250, 0, 101),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return findDoctor();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              title: const Text('My chart'),
              textColor: Color.fromARGB(255, 58, 105, 120),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return charts();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.assignment,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              title: const Text('Rendez-vous'),
              textColor: Color.fromARGB(255, 58, 105, 120),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return rendezvous();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.emergency,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              title: const Text('Emergency'),
              textColor: Color.fromARGB(255, 58, 105, 120),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              title: const Text('Settings'),
              textColor: Color.fromARGB(255, 58, 105, 120),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Color.fromARGB(255, 58, 105, 120),
                  iconSize: 35,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
                margin: EdgeInsets.only(bottom: 25, top: 15),
                child: Image(
                  image: AssetImage('images/doctor.gif'),
                  height: 450,
                )),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tbibi()));
                },
                child: Text('Sign Out'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(250, 250, 0, 101),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              margin: EdgeInsets.only(top: 25, bottom: 25),
            ),
          ],
        ),
      ),
    );
  }
}
