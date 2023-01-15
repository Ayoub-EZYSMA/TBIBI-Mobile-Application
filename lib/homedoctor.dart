import 'package:flutter/material.dart';
import 'package:tbibi/setting.dart';
import '/mood.dart';
import '../widgets/button.dart';
import 'package:tbibi/calendardoctor.dart';
import 'package:tbibi/patients.dart';
import 'package:tbibi/emergency.dart';

class Homedocter extends StatelessWidget {
  const Homedocter({Key? key}) : super(key: key);

  Widget cards(titre, image) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              width: 60.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 5,
            ),
            RaisedButton(
              color: Color.fromARGB(255, 10, 64, 88),
              title: titre,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

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
              'TBIBI',
            ),
            shadowColor: Color.fromARGB(255, 58, 105, 120),
            backgroundColor: Color.fromARGB(250, 250, 0, 101)),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  margin: EdgeInsets.only(top: 30, bottom: 25),
                  child: Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(249, 255, 255, 255),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(250, 250, 0, 101),
                    image: DecorationImage(image: AssetImage('images/doc.png')),
                    shape: BoxShape.circle,
                  )),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                title: const Text('Home'),
                textColor: Color.fromARGB(255, 58, 105, 120),
                focusColor: Color.fromARGB(250, 250, 0, 101),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Homedocter();
                  }));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                title: const Text('Patients'),
                textColor: Color.fromARGB(255, 58, 105, 120),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return patients();
                  }));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.assignment,
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                title: const Text('Calendar'),
                textColor: Color.fromARGB(255, 58, 105, 120),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return caldoc();
                  }));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.emergency,
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                title: const Text('Emergency'),
                textColor: Color.fromARGB(255, 58, 105, 120),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return emergency();
                  }));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Color.fromARGB(250, 250, 0, 101),
                ),
                title: const Text('Settings'),
                textColor: Color.fromARGB(255, 58, 105, 120),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SettingsScreen();
                  }));
                },
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
            ],
          ),
        ),
        backgroundColor: Colors.white70.withOpacity(0.9),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                height: 210.0,
                decoration: BoxDecoration(
                  gradient: purpleGradient,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Text(" Hi Doctor !",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Handlee',
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white)),
                          ),
                          Center(
                            child: Image.asset(
                              'images/medecin.gif',
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(26.0),
                    sliver: SliverGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: <Widget>[
                        cards('Notification', 'images/notification.png'),
                        cards('My calendar', 'images/calendar.png'),
                        cards('Urgency', 'images/urgent.png'),
                        cards('Highlights', 'images/highlight.png'),
                        cards('Magazines', 'images/news.png'),
                        cards('Surveys', 'images/survey.png'),
                        cards('Colleagues', 'images/colleagues.png'),
                        cards('Settings', 'images/setting.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
