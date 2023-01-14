import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '/homedoctor.dart';
import 'package:tbibi/logo.dart';
import 'package:tbibi/widgets/signUpDoctor.dart';
import 'package:tbibi/reset_password.dart';

class loginDoctor extends StatefulWidget {
  @override
  State<loginDoctor> createState() => _loginDoctorState();
}

class _loginDoctorState extends State<loginDoctor> {
  final _auth = FirebaseAuth.instance;
  late User signedInUser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  String MyCin = '', MyEmail = '', MyPassword = '';
  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        print(signedInUser.email);
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
          child: Form(
            child: Column(children: [
              TextFormField(
                onChanged: (val) {
                  MyCin = val;
                },
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    icon: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 58, 105, 120),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 58, 105, 120))),
                    fillColor: Colors.white54,
                    hintText: 'ID Doctor',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(250, 250, 0, 101),
                    ),
                    contentPadding: EdgeInsets.only(bottom: 15),
                    focusColor: Colors.white60),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
              ),
              TextFormField(
                onChanged: (val) {
                  MyEmail = val;
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
              Padding(
                padding: const EdgeInsets.all(10),
              ),
              TextFormField(
                obscureText: true,
                onChanged: (val) {
                  MyPassword = val;
                },
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    icon: Icon(
                      Icons.visibility_off,
                      color: Color.fromARGB(255, 58, 105, 120),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 58, 105, 120))),
                    fillColor: Colors.white54,
                    hintText: 'PASSWORD',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(250, 250, 0, 101),
                    ),
                    contentPadding: EdgeInsets.only(bottom: 15),
                    focusColor: Colors.white60),
              )
            ]),
          ),
        ),
        Container(
          height: 50,
          width: 2,
          child: ElevatedButton(
            onPressed: () async {
              print(MyEmail);
              print(MyCin);
              try {
                final neuUser = await _auth.createUserWithEmailAndPassword(
                    email: MyEmail, password: MyPassword);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Homedocter();
                }));
              } catch (e) {
                print(e);
              }
            },
            child: Text('log In'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(250, 250, 0, 101),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          margin: EdgeInsets.only(top: 25, bottom: 25),
        ),
        Row(
          children: <Widget>[
            const Text('Forget password?'),
            TextButton(
                child: const Text(
                  'Reset',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return reset();
                  }));
                },
                style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 58, 105, 120),
                ))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        Row(
          children: <Widget>[
            const Text('Does not have an account?'),
            TextButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return signUpDoc();
                  }));
                },
                style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 58, 105, 120),
                ))
          ],
          mainAxisAlignment: MainAxisAlignment.center,
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
      ]),
    );
  }
}
