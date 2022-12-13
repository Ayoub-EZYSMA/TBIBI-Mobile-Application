import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class patients extends StatelessWidget {
  const patients({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> currentweek = [
      ChartData('David', 65, Color.fromARGB(255, 58, 105, 120)),
      ChartData('Steve', 35, Color.fromARGB(248, 255, 255, 255)),
    ];
    final List<ChartData> lastweek = [
      ChartData('David', 55, Color.fromARGB(255, 58, 105, 120)),
      ChartData('Steve', 45, Color.fromARGB(249, 255, 255, 255)),
    ];
    final List<ChartData> lastmounth = [
      ChartData('David', 75, Color.fromARGB(255, 58, 105, 120)),
      ChartData('Steve', 25, Color.fromARGB(249, 255, 255, 255)),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
            fontWeight: FontWeight.bold),
        title: const Text(
          'Patients',
        ),
        shadowColor: Color.fromARGB(255, 58, 105, 120),
        backgroundColor: Color.fromARGB(250, 250, 0, 101),
      ),
      body: SafeArea(
          child: ListView(children: [
        Row(
          children: [
            Icon(
              Icons.laptop_chromebook,
              color: Color.fromARGB(250, 250, 0, 101),
            ),
            Text(
              ' Online Patients Charts',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 58, 105, 120),
              ),
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
        Row(
          children: [
            Spacer(),
            Text(
              'Current week',
              style: TextStyle(color: Color.fromARGB(249, 116, 114, 115)),
            ),
            Spacer(),
            Text(
              'Last week',
              style: TextStyle(color: Color.fromARGB(249, 116, 114, 115)),
            ),
            Spacer(),
            Text(
              'Last mounth',
              style: TextStyle(color: Color.fromARGB(249, 116, 114, 115)),
            ),
            Spacer()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 100,
                height: 100,
                child: SfCircularChart(series: <CircularSeries>[
                  // Render pie chart
                  PieSeries<ChartData, String>(
                    dataSource: currentweek,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    pointColorMapper: (ChartData data, _) => data.z,
                  )
                ])),
            Container(
                width: 100,
                height: 100,
                child: SfCircularChart(series: <CircularSeries>[
                  // Render pie chart
                  PieSeries<ChartData, String>(
                      dataSource: lastweek,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      pointColorMapper: (ChartData data, _) => data.z)
                ])),
            Container(
                width: 100,
                height: 100,
                child: SfCircularChart(series: <CircularSeries>[
                  // Render pie chart
                  PieSeries<ChartData, String>(
                      dataSource: lastmounth,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      pointColorMapper: (ChartData data, _) => data.z)
                ]))
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.business_center,
              color: Color.fromARGB(250, 250, 0, 101),
            ),
            Text(
              ' Office Patients Charts',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 58, 105, 120),
              ),
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
        Row(
          children: [
            Spacer(),
            Text(
              'Current week',
              style: TextStyle(color: Color.fromARGB(249, 116, 114, 115)),
            ),
            Spacer(),
            Text(
              'Last week',
              style: TextStyle(color: Color.fromARGB(249, 116, 114, 115)),
            ),
            Spacer(),
            Text(
              'Last mounth',
              style: TextStyle(color: Color.fromARGB(249, 116, 114, 115)),
            ),
            Spacer()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 100,
                height: 100,
                child: SfCircularChart(series: <CircularSeries>[
                  // Render pie chart
                  PieSeries<ChartData, String>(
                    dataSource: currentweek,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    pointColorMapper: (ChartData data, _) => data.z,
                  )
                ])),
            Container(
                width: 100,
                height: 100,
                child: SfCircularChart(series: <CircularSeries>[
                  // Render pie chart
                  PieSeries<ChartData, String>(
                      dataSource: lastweek,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      pointColorMapper: (ChartData data, _) => data.z)
                ])),
            Container(
                width: 100,
                height: 100,
                child: SfCircularChart(series: <CircularSeries>[
                  // Render pie chart
                  PieSeries<ChartData, String>(
                      dataSource: lastmounth,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      pointColorMapper: (ChartData data, _) => data.z)
                ]))
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.assignment,
              color: Color.fromARGB(250, 250, 0, 101),
            ),
            Text(
              ' Urgent Patients ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 58, 105, 120),
              ),
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
        Table(
          border: TableBorder.all(
              color: Color.fromARGB(255, 58, 105, 120), width: 1.5),
          children: const [
            TableRow(children: [
              Text(
                "ID",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(250, 250, 0, 101)),
              ),
              Text(
                "Patient Name",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(250, 250, 0, 101)),
              ),
              Text(
                "Urgent case",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(250, 250, 0, 101)),
              ),
            ]),
            TableRow(children: [
              Text(
                "6550",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Janice Stingley",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Myocardial infraction",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
            TableRow(children: [
              Text(
                "5211",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              Text(
                "Mark Hopper",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Stroke",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
            TableRow(children: [
              Text(
                "1112",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Yash Benerdol",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Arrhythmia",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
            TableRow(children: [
              Text(
                "4500",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Ali Khan",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Arrhythmia",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
            TableRow(children: [
              Text(
                "2120",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Sami akak",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Infraction",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
            TableRow(children: [
              Text(
                "1450",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "François Kalan",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Arrhythmia",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
            TableRow(children: [
              Text(
                "811",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Karim Stann",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Stroke",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
            TableRow(children: [
              Text(
                "7115",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Selena Gomez",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
              Text(
                "Headache",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
          ],
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
      ])),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.z);
  final String x;
  final double y;
  final Color z;
}
