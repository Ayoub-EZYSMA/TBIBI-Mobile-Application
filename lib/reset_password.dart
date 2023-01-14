import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tbibi/logo.dart';


class Dialog extends StatelessWidget {
  const Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class reset extends StatefulWidget {
  @override
  State<reset> createState() => _resetState();
}

class _resetState extends State<reset> {
  final _auth = FirebaseAuth.instance;
  late User signedInUser;
  TextEditingController _myemail = TextEditingController();
  Future opendialog() => showDialog(
      context: context,
      builder: ((context) => AlertDialog(content: Text('Check your Email'))));
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  String MyEmail = '';
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
            ]),
          ),
        ),
        Container(
          height: 50,
          width: 2,
          child: ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance
                  .sendPasswordResetEmail(email: MyEmail);
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Row(
                        children: [
                          Image(
                            image: AssetImage('images/popupmail.gif'),
                            width: 150,
                            height: 150,
                          )
                        ],
                      ),
                      content: Text(
                        'Check your Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(255, 58, 105, 120)),
                      ),
                      contentPadding: EdgeInsets.all(80),
                    );
                  });
            },
            child: Text('Reset'),
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
        )
      ]),
    );
  }
}
