import 'package:flutter/material.dart';
import 'package:tbibi/calendarPatient.dart';
import 'package:tbibi/mood.dart';
import 'package:tbibi/rendez_vous.dart';
import 'package:tbibi/setting.dart';
import '../widgets/button.dart';
import 'package:tbibi/find_your_doctor.dart';
import 'package:tbibi/emergency.dart';
import 'package:tbibi/patient_search.dart';

class HomePatient extends StatefulWidget {
  const HomePatient({Key? key}) : super(key: key);

  @override
  _HomePatientState createState() => _HomePatientState();
}

class _HomePatientState extends State<HomePatient> {
  int _selectedIndex = 0;

  void onTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
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
                      color: Color.fromARGB(250, 250, 0, 101),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(250, 250, 0, 101),
                  image: DecorationImage(
                      image: AssetImage('images/profilephoto.png')),
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
              title: const Text('Find your doctor'),
              textColor: Color.fromARGB(255, 58, 105, 120),
              focusColor: Color.fromARGB(250, 250, 0, 101),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return findDoctor();
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
              title: const Text('My chart'),
              textColor: Color.fromARGB(255, 58, 105, 120),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return idpage();
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
                  return calpat();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.timelapse_outlined,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color.fromARGB(250, 250, 0, 101),
              ),
              title: const Text('Rendez-vous'),
              textColor: Color.fromARGB(255, 58, 105, 120),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return rendezvous();
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
      backgroundColor: mainBgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: <Widget>[
                _backBgCover(),
                _greetings(),
                _moodsHolder(),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _notificationCard(),
                    _nextAppointmentText(),
                    _appoinmentCard(),
                    _areaSpecialistsText(),
                    _specialistsCardInfo(),
                    _specialistsCardInfo1(),
                    _specialistsCardInfo2(),

                    //_specialistsCardInfo(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned _moodsHolder() {
    return Positioned(
      bottom: -45,
      child: Container(
        height: 120.0,
        width: MediaQuery.of(context).size.width - 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(28)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 5.5,
                blurRadius: 5.5,
              )
            ]),
        child: MoodsSelector(),
      ),
    );
  }

  Container _backBgCover() {
    return Container(
      height: 210.0,
      decoration: BoxDecoration(
        gradient: purpleGradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
    );
  }

  Positioned _greetings() {
    return Positioned(
      left: 20,
      bottom: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 3,
          ),
          Text(
            'Hi ',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'How are you feeling today ?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _nextAppointmentText() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Your Next Appointment',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: midColor,
            ),
          ),
        ],
      ),
    );
  }

  Container _appoinmentCard() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color(0xFFD9D9D9),
                backgroundImage: NetworkImage(
                    'https://www.tabibiraq.com/files/styles/large/public/Faris-Hazim.jpg?itok=8-QpEuiz'),
                radius: 36.0,
              ),
              RichText(
                text: TextSpan(
                  text: 'Dr MOKNI Mohamed',
                  style: TextStyle(
                    color: Color.fromARGB(255, 10, 64, 88),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\nSunday,May 5th at 8:00 PM',
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                      text: '\nAriana, 570 Rue Monji Slim',
                      style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Divider(
            color: Colors.grey[200],
            height: 3,
            thickness: 1,
          ),
          SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }

  Column _iconBuilder(icon, title) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 28,
          color: Colors.black,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Container _notificationCard() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color.fromRGBO(235, 13, 87, 1),
        // gradient: redGradient,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
          title: Text(
            'Your Visit with \nDr MASMOUDI Karim',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: myButton(
            color: Color.fromARGB(255, 10, 64, 88),
            title: 'Review & Add Notes',
            onPressed: () {},
          )),
    );
  }

  Widget _areaSpecialistsText() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Doctors You may Consider',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: midColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _specialistsCardInfo() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color(0xFFD9D9D9),
                backgroundImage: NetworkImage(
                    'https://www.med.tn/uploads/offices/149341_dr-sana-cherif-ben-soltana_1591398536.jpg'),
                radius: 36.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: 'Hi I am\n',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.3,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Dr TOUKEBRI Selma',
                          style: TextStyle(
                            color: Color.fromARGB(255, 10, 64, 88),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:
                              '\nDermatologist \nTUNIS, Lac2, Rue Hedi Cheker |',
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: '\nFaculty of Medecine of Tunis',
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  buttoncheck()
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _specialistsCardInfo1() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
    margin: EdgeInsets.only(
      bottom: 20.0,
    ),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1.0,
            blurRadius: 6.0,
          ),
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              backgroundImage: NetworkImage(
                  'https://www.tabibiraq.com/files/styles/large/public/rustomhami.jpg?itok=8PBz6CiM'),
              radius: 36.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'Hi I am\n',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Dr BELGHITH Naceur',
                        style: TextStyle(
                          color: Color.fromARGB(255, 10, 64, 88),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '\nDentist \nCentre Urbain Nord , Grand Tunis |',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: '\nFaculty of Medecine of Monastir',
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                buttoncheck()
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _specialistsCardInfo2() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
    margin: EdgeInsets.only(
      bottom: 20.0,
    ),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1.0,
            blurRadius: 6.0,
          ),
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              backgroundImage: NetworkImage(
                  'https://thumbs.dreamstime.com/b/pose-saoudienne-arabe-d-homme-de-docteur-heureuse-36815702.jpg'),
              radius: 36.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'Hi I am\n',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Dr BINOUS Amine',
                        style: TextStyle(
                          color: Color.fromARGB(255, 10, 64, 88),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '\nPsychiatrist \nMannouba , Rue Ahmed Amer |',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: '\nFaculty of Medecine of Sousse',
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                buttoncheck()
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
