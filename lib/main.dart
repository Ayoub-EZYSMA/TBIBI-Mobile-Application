import 'package:flutter/material.dart';
import 'package:tbibi/widgets/button.dart';
import 'package:tbibi/logo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  runApp(tbibi());
}

class tbibi extends StatelessWidget {
  const tbibi({Key? key}) : super(key: key);

  static const String _title = 'TBIBI';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            logo(),
            Container(
              margin: EdgeInsets.only(bottom: 25, top: 15),
              child: Image(
                image: AssetImage('images/doc.png'),
                height: 150,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              child: Center(
                child: Text('Hi!',
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(250, 250, 0, 101))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              child: Center(
                child: Text('Welcome to TBIBI',
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 58, 105, 120))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              child: Center(
                child: Text('Are you a ',
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 58, 105, 120))),
              ),
            ),
            button5(),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              child: Center(
                child: Text('Or',
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 58, 105, 120))),
              ),
            ),
            button6(),
            Image.asset(
              'images/docpat.gif',
              height: 200,
            ),
          ],
        ));
  }
}
