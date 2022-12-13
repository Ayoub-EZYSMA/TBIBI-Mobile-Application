import 'package:flutter/material.dart';
import 'package:tbibi/prendre_rendez_vous.dart';
import '../widgets/button.dart';

class rendezvous extends StatefulWidget {
  const rendezvous({Key? key}) : super(key: key);

  @override
  _rendezvousState createState() => _rendezvousState();
}

class _rendezvousState extends State<rendezvous> {
  final titles = ["Rendez-vous 1", "Rendez-vous  2", "Rendez-vous 3"];
  final subtitles = [
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
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: titles.length,
                    itemBuilder: (context, index) {
                      return Card(
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
                SizedBox(
                  height: 100,
                ),
                FloatingActionButton.extended(
                  label: Text('nouveau rendez-vous'), // <-- Text
                  backgroundColor: Color.fromARGB(255, 58, 105, 120),
                  icon: Icon(
                    Icons.add,
                    size: 24.0,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return formpage();
                    }));
                  },
                ),
              ],
            )));
  }
}
