import 'package:flutter/material.dart';

class idpage extends StatelessWidget {
  const idpage({super.key});

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
            'Patient Chart',
          ),
          shadowColor: Color.fromARGB(255, 58, 105, 120),
          backgroundColor: Color.fromARGB(250, 250, 0, 101),
        ),
        body: ListView(children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 80)),
          DataTable(
            columns: const [
              DataColumn(
                  label: Text('Patient',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 58, 105, 120)))),
              DataColumn(
                  label: Text('Informations',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 58, 105, 120))))
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('ID ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('1')),
              ]),
              DataRow(cells: [
                DataCell(Text('Name ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('Stephen ')),
              ]),
              DataRow(cells: [
                DataCell(Text('Phone number',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('55555555 ')),
              ]),
              DataRow(cells: [
                DataCell(Text('Symptoms',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('headacke ')),
              ]),
              DataRow(cells: [
                DataCell(Text('Illnesses',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('fever ')),
              ]),
              DataRow(cells: [
                DataCell(Text('Level of urgency',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('mediam ')),
              ]),
              DataRow(cells: [
                DataCell(Text('Next appointment',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('   - ')),
              ]),
              DataRow(cells: [
                DataCell(Text('Latest appointment',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('   - ')),
              ]),
              DataRow(cells: [
                DataCell(Text('Home Location',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('-')),
              ]),
              DataRow(cells: [
                DataCell(Text('Notes',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))),
                DataCell(Text('   - ')),
              ]),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 25),
          ),
          Container(
            height: 40,
            width: 150,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Download my chart'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 10, 64, 88),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            height: 25,
          )
        ]));
  }
}
