
import 'package:flutter/material.dart';
import 'package:tbibi/logInPatient.dart';

class setting extends StatelessWidget {
  const setting({super.key});

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
              'Settings',
            ),
            shadowColor: Color.fromARGB(255, 58, 105, 120),
            backgroundColor: Color.fromARGB(250, 250, 0, 101)),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 50,
              width: 411,
              child: ElevatedButton(
                onPressed: (() {}),
                child: Text('Account'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 58, 105, 120),
                    shape: RoundedRectangleBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 50,
              width: 411,
              child: ElevatedButton(
                onPressed: (() {}),
                child: Text('Appearence'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 58, 105, 120),
                    shape: RoundedRectangleBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 50,
              width: 411,
              child: ElevatedButton(
                onPressed: (() {}),
                child: Text('Privacy'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 58, 105, 120),
                    shape: RoundedRectangleBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 50,
              width: 411,
              child: ElevatedButton(
                onPressed: (() {}),
                child: Text('Dark mode'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 58, 105, 120),
                    shape: RoundedRectangleBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 50,
              width: 411,
              child: ElevatedButton(
                onPressed: (() {}),
                child: Text('About'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 58, 105, 120),
                    shape: RoundedRectangleBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 50,
              width: 411,
              child: ElevatedButton(
                onPressed: (() {}),
                child: Text('Delete Account'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 58, 105, 120),
                    shape: RoundedRectangleBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 50,
              width: 411,
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return loginPatient();
                  }));
                }),
                child: Text('Log out'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 58, 105, 120),
                    shape: RoundedRectangleBorder()),
              ),
            ),
          ],
        ));
  }
}
