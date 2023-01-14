import 'package:flutter/material.dart';
import 'package:tbibi/patient_search.dart';

// ignore: camel_case_types
class bdpage extends StatelessWidget {
  const bdpage({super.key});

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
            'Search',
          ),
          shadowColor: Color.fromARGB(255, 58, 105, 120),
          backgroundColor: Color.fromARGB(250, 250, 0, 101),
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SearchPage())),
                icon: const Icon(Icons.search))
          ],
        ),
        body: ListView(children: <Widget>[
          const Center(
              child: Text(
            '      ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          DataTable(
            columns: const [
              DataColumn(
                  label: Text('ID',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Name',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Date',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1'), onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return idpage();
                  }));
                }),
                DataCell(Text('Stephen')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('John')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('10')),
                DataCell(Text('Harry')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Stephen')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('John')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('10')),
                DataCell(Text('Harry')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Peter')),
                DataCell(Text(' 10/2/2022 8AM'), showEditIcon: true),
              ]),
            ],
          ),
        ]));
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(250, 250, 0, 101),
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {},
                    ),
                    hintText: 'Patient name...',
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}

class Searchdoc extends StatelessWidget {
  const Searchdoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(250, 250, 0, 101),
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {},
                    ),
                    hintText: 'Doctor name...',
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}
