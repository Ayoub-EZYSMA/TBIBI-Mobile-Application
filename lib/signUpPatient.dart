import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tbibi/logo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPatient extends StatefulWidget {
  const SignUpPatient({super.key});

  @override
  State<SignUpPatient> createState() => _SignUpPatientState();
}

class _SignUpPatientState extends State<SignUpPatient> {
  final _auth = FirebaseAuth.instance;
  late User signedUp;
  final _fname = TextEditingController();
  final _lname = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _psd = TextEditingController();
  final _cpsd = TextEditingController();

  Future signup() async {
    if (_psd == _cpsd) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email.text, password: _psd.text);
    }
    ;
  }

  Future adduser(String firstname, String lastname, String email, int phone,
      String psd) async {
    await FirebaseFirestore.instance.collection('Patients').add({
      'fname': firstname,
      'lname': lastname,
      'email': email,
      'phone': phone,
      'psd': psd,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void dispose() {
    _fname.dispose();
    _lname.dispose();
    _email.dispose();
    _phone.dispose();
    _psd.dispose();
    _cpsd.dispose();
    super.dispose();
  }

  String Fname = '', Lname = '', email = '', phone = '', psd = '', cpsd = '';
  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedUp = user;
        print(signedUp.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      logo(),
      Container(
        margin: EdgeInsets.only(bottom: 25, top: 15),
        child: Image(
          image: AssetImage('images/doc.png'),
          height: 150,
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: _fname,
          decoration: InputDecoration(
              alignLabelWithHint: true,
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 58, 105, 120),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 58, 105, 120))),
              fillColor: Colors.white54,
              hintText: 'FIRST NAME',
              hintStyle: TextStyle(
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              contentPadding: EdgeInsets.only(bottom: 15),
              focusColor: Colors.white60),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: _lname,
          decoration: InputDecoration(
              alignLabelWithHint: true,
              icon: Icon(
                Icons.family_restroom,
                color: Color.fromARGB(255, 58, 105, 120),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 58, 105, 120))),
              fillColor: Colors.white54,
              hintText: 'LAST NAME',
              hintStyle: TextStyle(
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              contentPadding: EdgeInsets.only(bottom: 15),
              focusColor: Colors.white60),
        ),
      ),
      Container(
          padding: const EdgeInsets.all(10),
          child: Form(
              child: Column(
            children: [
              TextField(
                controller: _email,
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    icon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 58, 105, 120),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 58, 105, 120))),
                    fillColor: Colors.white54,
                    hintText: 'EMAIL',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(250, 250, 0, 101),
                    ),
                    contentPadding: EdgeInsets.only(bottom: 15),
                    focusColor: Colors.white60),
              ),
            ],
          ))),
      Container(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: _phone,
          decoration: InputDecoration(
              alignLabelWithHint: true,
              icon: Icon(
                Icons.phone,
                color: Color.fromARGB(255, 58, 105, 120),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 58, 105, 120))),
              fillColor: Colors.white54,
              hintText: 'PHONE',
              hintStyle: TextStyle(
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              contentPadding: EdgeInsets.only(bottom: 15),
              focusColor: Colors.white60),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: _psd,
          obscureText: true,
          decoration: InputDecoration(
              alignLabelWithHint: true,
              icon: Icon(
                Icons.visibility_off,
                color: Color.fromARGB(255, 58, 105, 120),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 58, 105, 120))),
              fillColor: Colors.white54,
              hintText: 'PASSWORD',
              hintStyle: TextStyle(
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              contentPadding: EdgeInsets.only(bottom: 15),
              focusColor: Colors.white60),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              alignLabelWithHint: true,
              icon: Icon(
                Icons.lock,
                color: Color.fromARGB(255, 58, 105, 120),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 58, 105, 120))),
              fillColor: Colors.white54,
              hintText: 'CONFIRM PASSWORD',
              hintStyle: TextStyle(
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              contentPadding: EdgeInsets.only(bottom: 15),
              focusColor: Colors.white60),
        ),
      ),
      Container(
        height: 50,
        width: 2,
        child: ElevatedButton(
          onPressed: () async {
            await adduser(_fname.text, _lname.text, _email.text,
                int.parse(_phone.text), _psd.text);
          },
          child: Text('Sign Up'),
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
        ),
        margin: EdgeInsets.only(top: 25, bottom: 25),
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
      ),
    ]));
  }
}
