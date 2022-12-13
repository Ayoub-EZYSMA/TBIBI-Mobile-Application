import 'package:flutter/material.dart';
import 'package:tbibi/AsApatient.dart';
import 'package:tbibi/logInDoctor.dart';
import 'package:tbibi/signUpPatient.dart';
import 'package:tbibi/widgets/signUpDoctor.dart';
import 'package:tbibi/profileDoctor.dart';
import 'package:tbibi/AsAdoctor.dart';
import 'package:tbibi/profilePatient.dart';
import 'package:tbibi/AsApatient.dart';
import 'package:tbibi/logInPatient.dart';

class button1doc extends StatelessWidget {
  const button1doc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return loginDoctor();
          }));
        },
        child: Text('Log In'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(250, 250, 0, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      margin: EdgeInsets.only(top: 25),
    );
  }
}

class button1Patient extends StatelessWidget {
  const button1Patient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return loginPatient();
          }));
        },
        child: Text('Log In'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(250, 250, 0, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      margin: EdgeInsets.only(top: 25),
    );
  }
}

class button2 extends StatelessWidget {
  const button2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return signUpDoc();
          }));
        },
        child: Text('Sign Up'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(250, 250, 0, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      margin: EdgeInsets.only(top: 25, bottom: 75),
    );
  }
}

class button2Patient extends StatelessWidget {
  const button2Patient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SignUpPatient();
          }));
        },
        child: Text('Sign Up'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(250, 250, 0, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      margin: EdgeInsets.only(top: 25, bottom: 75),
    );
  }
}

class button3 extends StatelessWidget {
  const button3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return signUpDoc();
          }));
        },
        child: Text('Sign Up'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(250, 250, 0, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      margin: EdgeInsets.only(top: 25, bottom: 75),
    );
  }
}

class button33 extends StatelessWidget {
  const button33({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      child: ElevatedButton(
        onPressed: () async {
          await loginDoctor();
        },
        child: Text('log In'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(250, 250, 0, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      margin: EdgeInsets.only(top: 25, bottom: 25),
    );
  }
}

class button4 extends StatelessWidget {
  const button4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Create account'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(250, 250, 0, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      margin: EdgeInsets.only(top: 25, bottom: 25),
    );
  }
}

class button5 extends StatelessWidget {
  const button5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MyApp();
          }));
        },
        child: Text('Doctor'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(250, 250, 0, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      margin: EdgeInsets.only(top: 10, bottom: 25),
    );
  }
}

class button6 extends StatelessWidget {
  const button6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MyApp1();
          }));
        },
        child: Text('Patient'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(250, 250, 0, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      margin: EdgeInsets.only(
        top: 5,
      ),
    );
  }
}

class Button7 extends StatelessWidget {
  Button7({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          onPressed: () => onPressed,
          minWidth: 200,
          height: 42,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

/*Container(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            key: formstate,
            onSaved: (val) {
              email = val;
            },
            validator: (val) {
              if (val != 3) {
                return "your CIN must be 8 characters";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
                alignLabelWithHint: true,
                icon: Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 58, 105, 120),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 58, 105, 120))),
                fillColor: Colors.white54,
                hintText: 'EMAIL',
                hintStyle: TextStyle(
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                contentPadding: EdgeInsets.only(bottom: 15),
                focusColor: Colors.white60),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            onSaved: (val) {
              password = val;
            },
            validator: (val) {
              if (val != 3) {
                return "your CIN must be 8 characters";
              } else {
                return null;
              }
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


          
        ),*/