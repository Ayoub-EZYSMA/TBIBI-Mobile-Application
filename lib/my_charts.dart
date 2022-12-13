import 'package:flutter/material.dart';

import '../widgets/button.dart';

class charts extends StatefulWidget {
  const charts({Key? key}) : super(key: key);

  @override
  _chartsState createState() => _chartsState();
}

class _chartsState extends State<charts> {
  final titles = ["Chart1", "Chart2", "Chart3"];
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
            'Charts',
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
                            leading: Icon(Icons.assignment),
                            title: Text(titles[index]),
                            subtitle: Text(subtitles[index]),
                            trailing: Icon(Icons.keyboard_arrow_right),
                          ),
                        );
                      },
                    ),
                  ),
                ])));
  }
}
