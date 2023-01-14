import 'package:flutter/material.dart';
import 'package:tbibi/logInDoctor.dart';
import 'package:tbibi/logo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signUpDoc extends StatefulWidget {
  const signUpDoc({super.key});

  @override
  State<signUpDoc> createState() => _signUpState();
}

class _signUpState extends State<signUpDoc> {
  final _auth = FirebaseAuth.instance;
  late User signedUp;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
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
          onChanged: (val) {
            Fname = val;
          },
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
          onChanged: (val) {
            Lname = val;
          },
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
                onChanged: (val) {
                  email = val;
                },
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
          onChanged: (val) {
            phone = val;
          },
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
          obscureText: true,
          onChanged: (val) {
            psd = val;
          },
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
          onChanged: (val) {
            cpsd = val;
          },
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
            try {
              final neuUser = await _auth.createUserWithEmailAndPassword(
                  email: email, password: psd);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return loginDoctor();
              }));
            } catch (e) {
              print(e);
            }
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
      Container()
    ]));
  }
}
