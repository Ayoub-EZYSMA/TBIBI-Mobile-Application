import 'package:flutter/material.dart';
import 'package:tbibi/form.dart';

import '../widgets/button.dart';

class rendezvous extends StatefulWidget {
  const rendezvous({Key? key}) : super(key: key);

  @override
  _rendezvousState createState() => _rendezvousState();
}

class _rendezvousState extends State<rendezvous> {
  final titles = [
    "Rendez-vous 07/01/2023",
    "Rendez-vous 05/08/2022",
    "Rendez-vous 12/07/2022",
    "Rendez-vous 01/06/2022",
    "Rendez-vous 10/06/2022",
    "Rendez-vous 29/05/2022"
  ];
  final subtitles = [
    "Dr Med Amine Abess",
    "Dr Med Aziz Abessi",
    "Dr Med  Bilkhir",
    "Dr Med Amine Abess",
    "Dr Med Aziz Abessi",
    "Dr Med  Bilkhir"
  ];

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
            'Rendez-vous',
          ),
          shadowColor: Color.fromARGB(255, 58, 105, 120),
          backgroundColor: Color.fromARGB(250, 250, 0, 101),
        ),
        backgroundColor: Colors.white,
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 500,
                  child: ListView.builder(
                    itemCount: titles.length,
                    itemBuilder: (context, index) {
                      return Container(
                        //                           <-- Card widget
                        child: ListTile(
                          leading: Icon(Icons.calendar_today),
                          title: Text(titles[index]),
                          subtitle: Text(subtitles[index]),
                        ),
                      );
                    },
                  ),
                ),
                FloatingActionButton.extended(
                  label: Text('Make an appointment'), // <-- Text
                  backgroundColor: Color.fromARGB(255, 10, 64, 88),
                  icon: Icon(
                    Icons.add,
                    size: 24.0,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return formpat();
                    }));
                  },
                ),
              ],
            )));
  }
}
