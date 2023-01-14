import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class calpat extends StatelessWidget {
  const calpat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back,
                color: Color.fromARGB(255, 247, 246, 246)),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: SfCalendar(
            view: CalendarView.schedule,
            allowedViews: [
              CalendarView.month,
              CalendarView.workWeek,
              CalendarView.timelineWorkWeek,
            ],
            timeSlotViewSettings: TimeSlotViewSettings(
                startHour: 9,
                endHour: 16,
                nonWorkingDays: <int>[DateTime.saturday, DateTime.sunday]),
            dataSource: _getCalendarDataSource(),
            appointmentTextStyle: TextStyle(
                fontSize: 25,
                color: Color(0xFF045762),
                letterSpacing: 5,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}

_AppointmentDataSource _getCalendarDataSource() {
  List<Appointment> appointments = <Appointment>[];
  RecurrenceProperties recurrence = RecurrenceProperties(
    startDate: DateTime.utc(2023, 1, 16),
    endDate: DateTime.utc(2023, 1, 28),
  );
  appointments.add(Appointment(
    startTime: DateTime.utc(2022, 12, 25),
    endTime: DateTime.utc(2023, 1, 1),
    subject:
        'Busy                                                                                                                                                                                     .                                                                                                                                                            .',
    color: Color.fromARGB(255, 94, 199, 231),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 2, 4),
    endTime: DateTime.utc(2023, 2, 5),
    subject:
        'Busy                                                                                                                                                                                     .                                                                                                                                                            .',
    color: Color.fromARGB(255, 94, 199, 231),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 2, 11),
    endTime: DateTime.utc(2023, 2, 12),
    subject:
        'Busy                                                                                                                                                                                     .                                                                                                                                                            .',
    color: Color.fromARGB(255, 94, 199, 231),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 2, 18),
    endTime: DateTime.utc(2023, 2, 19),
    subject:
        'Busy                                                                                                                                                                                     .                                                                                                                                                            .',
    color: Color.fromARGB(255, 94, 199, 231),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 2, 25),
    endTime: DateTime.utc(2023, 2, 26),
    subject:
        'Busy                                                                                                                                                                                     .                                                                                                                                                            .',
    color: Color.fromARGB(255, 94, 199, 231),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 3, 1),
    endTime: DateTime.utc(2023, 3, 2),
    subject:
        'Busy                                                                                                                                                                                     .                                                                                                                                                            .',
    color: Color.fromARGB(255, 94, 199, 231),
  ));

  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 21),
    endTime: DateTime.utc(2023, 1, 22),
    subject:
        'Busy                                                                                                                                                                                     .                                                                                                                                                            .',
    color: Color.fromARGB(255, 94, 199, 231),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 28),
    endTime: DateTime.utc(2023, 1, 29),
    subject:
        'Busy                                                                                                                                                                                     .                                                                                                                                                            .',
    color: Color.fromARGB(255, 94, 199, 231),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 12, 9),
    endTime: DateTime.utc(2023, 1, 12, 9).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 13, 10, 30),
    endTime: DateTime.utc(2023, 1, 13, 10, 30).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 13, 13),
    endTime: DateTime.utc(2023, 1, 13, 13).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 13, 14, 30),
    endTime: DateTime.utc(2023, 1, 13, 14, 30).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 17, 9),
    endTime: DateTime.utc(2023, 1, 17, 9).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 17, 10, 30),
    endTime: DateTime.utc(2023, 1, 17, 10, 30).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 17, 13),
    endTime: DateTime.utc(2023, 1, 17, 13).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 17, 14, 30),
    endTime: DateTime.utc(2023, 1, 17, 14, 30).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));

  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 17, 9),
    endTime: DateTime.utc(2023, 1, 18, 9).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 18, 10, 30),
    endTime: DateTime.utc(2023, 1, 17, 10, 30).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 18, 13),
    endTime: DateTime.utc(2023, 1, 17, 13).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 18, 14, 30),
    endTime: DateTime.utc(2023, 1, 18, 14, 30).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));

  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 10, 9),
    endTime: DateTime.utc(2023, 1, 10, 9).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 10, 10, 30),
    endTime: DateTime.utc(2023, 1, 10, 10, 30).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 10, 13),
    endTime: DateTime.utc(2023, 1, 10, 13).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 10, 14, 30),
    endTime: DateTime.utc(2023, 1, 10, 14, 30).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 23),
    endTime: DateTime.utc(2023, 1, 29).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));

  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 25, 9),
    endTime: DateTime.utc(2023, 1, 17, 9).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 25, 10, 30),
    endTime: DateTime.utc(2023, 1, 17, 10, 30).add(Duration(hours: 1)),
    subject: 'Unavailable',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 25, 13),
    endTime: DateTime.utc(2023, 1, 25, 13).add(Duration(hours: 1)),
    subject: 'Unavailable                        ',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
    startTime: DateTime.utc(2023, 1, 25, 14, 30),
    endTime: DateTime.utc(2023, 1, 25, 14, 30).add(Duration(hours: 1)),
    subject:
        'Unavailable                                                                                        .....',
    color: Color.fromARGB(255, 0, 0, 0),
  ));
  appointments.add(Appointment(
      startTime: DateTime.utc(2023, 1, 2),
      endTime: DateTime.utc(2023, 1, 2).add(Duration(days: 9999)),
      subject:
          ' .                                                                                                                                                         .                                                                                                                                                          .',
      color: Color.fromARGB(255, 16, 139, 36),
      isAllDay: false,
      recurrenceRule: SfCalendar.generateRRule(
          recurrence,
          DateTime.utc(2023, 1, 1),
          DateTime.utc(2023, 1, 1).add(Duration(days: 999)))));

  return _AppointmentDataSource(appointments);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}
