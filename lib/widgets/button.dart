import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:tbibi/calendardoctor.dart';
import 'package:tbibi/homepatient.dart';
import 'package:tbibi/logInDoctor.dart';
import 'package:tbibi/search.dart';
import 'package:tbibi/signUpPatient.dart';
import 'package:tbibi/widgets/signUpDoctor.dart';
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
            return HomePatient();
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
            return loginDoctor();
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

class buttonsearch extends StatelessWidget {
  const buttonsearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return bdpage();
          }));
        },
        child: Text('Search'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(250, 250, 0, 101),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      margin: EdgeInsets.only(top: 5, bottom: 5),
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
            return loginPatient();
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

class buttonc1 extends StatelessWidget {
  const buttonc1({super.key});

  @override
  Widget build(BuildContext context) {
    final number = '+21652509407';
    return ListTile(
      title: Text('TAHAR SFAR emergency'),
      subtitle: Text(number),
      trailing: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(250, 250, 0, 101),
                  ))),
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: Text('Call',
              style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class buttonc2 extends StatelessWidget {
  const buttonc2({super.key});

  @override
  Widget build(BuildContext context) {
    final number = '+21652509407';
    return ListTile(
      title: Text('CHRLE NICOLLE emergency'),
      subtitle: Text(number),
      trailing: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(250, 250, 0, 101),
                  ))),
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: Text('Call',
              style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class buttonc3 extends StatelessWidget {
  const buttonc3({super.key});

  @override
  Widget build(BuildContext context) {
    final number = '+21652509407';
    return ListTile(
      title: Text('RABTA emergency'),
      subtitle: Text(number),
      trailing: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(250, 250, 0, 101),
                  ))),
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: Text('Call',
              style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class buttonc4 extends StatelessWidget {
  const buttonc4({super.key});

  @override
  Widget build(BuildContext context) {
    final number = '+21652509407';
    return ListTile(
      title: Text('BECHIR HAMZA emergency'),
      subtitle: Text(number),
      trailing: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(250, 250, 0, 101),
                  ))),
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: Text('Call',
              style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class buttonc5 extends StatelessWidget {
  const buttonc5({super.key});

  @override
  Widget build(BuildContext context) {
    final number = '+21652509407';
    return ListTile(
      title: Text('FARHAT HACHED emergency'),
      subtitle: Text(number),
      trailing: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(250, 250, 0, 101),
                  ))),
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: Text('Call',
              style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class buttonc6 extends StatelessWidget {
  const buttonc6({super.key});

  @override
  Widget build(BuildContext context) {
    final number = '+21652509407';
    return ListTile(
      title: Text('HABIB THAMER emergency'),
      subtitle: Text(number),
      trailing: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(250, 250, 0, 101),
                  ))),
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: Text('Call',
              style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class buttonc7 extends StatelessWidget {
  const buttonc7({super.key});

  @override
  Widget build(BuildContext context) {
    final number = '+21652509407';
    return ListTile(
      title: Text('FATTOUMA BOURGUIBA emergency'),
      subtitle: Text(number),
      trailing: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(250, 250, 0, 101),
                  ))),
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: Text('Call',
              style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class buttonc8 extends StatelessWidget {
  const buttonc8({super.key});

  @override
  Widget build(BuildContext context) {
    final number = '+21652509407';
    return ListTile(
      title: Text('HBIB BOUGUETFA emergency'),
      subtitle: Text(number),
      trailing: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(250, 250, 0, 101),
                  ))),
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: Text('Call',
              style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class buttonc9 extends StatelessWidget {
  const buttonc9({super.key});

  @override
  Widget build(BuildContext context) {
    final number = '+21652509407';
    return ListTile(
      title: Text('HABIB BOURGUIBA emergency'),
      subtitle: Text(number),
      trailing: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(250, 250, 0, 101),
                  ))),
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: Text('Call',
              style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class buttonc10 extends StatelessWidget {
  const buttonc10({super.key});

  @override
  Widget build(BuildContext context) {
    final number = '+21652509407';
    return ListTile(
      title: Text('MONJI SLIM emergency'),
      subtitle: Text(number),
      trailing: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(250, 250, 0, 101),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(250, 250, 0, 101),
                  ))),
          onPressed: () async {
            await FlutterPhoneDirectCaller.callNumber(number);
          },
          child: Text('Call',
              style: TextStyle(
                  color: Color.fromARGB(248, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
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

class myButton extends StatelessWidget {
  myButton({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 180,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return caldoc();
          }));
        },
        child: Text('Review & Add notes'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 10, 64, 88),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
      margin: EdgeInsets.only(top: 10, bottom: 10),
    );
  }
}

class RaisedButton extends StatelessWidget {
  RaisedButton(
      {required this.color, required this.title, required this.onPressed});

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
          minWidth: 50,
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

class MyButton extends StatelessWidget {
  MyButton({required this.color, required this.title, required this.onPressed});

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

class buttoncheck extends StatelessWidget {
  const buttoncheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return caldoc();
          }));
        },
        child: Text('Check Calendar'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(235, 13, 87, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
      margin: EdgeInsets.only(top: 10, bottom: 10),
    );
  }
}

class buttonsetting1 extends StatelessWidget {
  const buttonsetting1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return caldoc();
          }));
        },
        child: Text('Check Calendar'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(235, 13, 87, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
      margin: EdgeInsets.only(top: 10, bottom: 10),
    );
  }
}
