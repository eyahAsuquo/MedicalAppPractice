import 'package:flutter/material.dart';
import '../home/home.dart';
import '../Report/report.dart';
import '../Notification/notification.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: const ListTile(
                  title: Text(
                    'Schedule',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Image(
                    image: AssetImage('assets/images/Date.png'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FirstRow(
                      color: Color(0xFF1C6BA4),
                      numtext: '12',
                      text: 'Tue',
                      textcolor: Colors.white),
                  FirstRow(
                      color: Color(0xFfDCEDF9),
                      numtext: '13',
                      text: 'Wed',
                      textcolor: Colors.black),
                  FirstRow(
                      color: Color(0xFfDCEDF9),
                      numtext: '14',
                      text: 'Thur',
                      textcolor: Colors.black),
                  FirstRow(
                      color: Color(0xFfDCEDF9),
                      numtext: '15',
                      text: 'Fri',
                      textcolor: Colors.black),
                ],
              ),
            ),
            const TimeRow(time: '12 : 00 PM'),
            const SizedBox(height: 10),
            const DoctorCard(
                color: Color(0xFF1C6BA4),
                img: 'assets/images/Rectangle 11.png',
                time: '12 : 30 PM',
                name: 'Dr. Zim Ahktar',
                specialty: 'Cardiologist',
                textcolor: Colors.white,
                iconcolor: Colors.white),
            const SizedBox(height: 10),
            const TimeRow(time: '11 : 00 PM'),
            const SizedBox(height: 10),
            const DoctorCard(
                color: Color(0xFFF1E6EA),
                img: 'assets/images/Rectangle 11 (1).png',
                time: '11 : 30 AM',
                name: 'Dr. Shahin Alam',
                specialty: 'Cardiologist',
                textcolor: Colors.black,
                iconcolor: Colors.black),
            const SizedBox(height: 10),
            const TimeRow(time: '10 : 00 PM'),
            const SizedBox(height: 10),
            const DoctorCard(
                color: Color(0xFFFAF0DB),
                img: 'assets/images/Rectangle 11 (2).png',
                time: '10 : 30 PM',
                name: 'Dr. Min Akhtar',
                specialty: 'Cardiologist',
                textcolor: Colors.black,
                iconcolor: Colors.black),

            /* BOTTOM NAVIGATION BAR */
            const SizedBox(height: 45),
            Container(
              height: 50,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const HomePage()),
                          ),
                        );
                      },
                      child: Container(
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                              image: AssetImage('assets/images/home.png'),
                            ),
                            Text(
                              'Home',
                              style: TextStyle(color: Color(0xFF155A96)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const Schedule()),
                          ),
                        );
                      },
                      child: Container(
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/event_note_black_24dp 1.png'),
                            ),
                            Text(
                              'Schedule',
                              style: TextStyle(color: Color(0xFF7B8D9E)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const Report()),
                          ),
                        );
                      },
                      child: Container(
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                              image: AssetImage('assets/images/Report.png'),
                            ),
                            Text(
                              'Report',
                              style: TextStyle(color: Color(0xFF7B8D9E)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const Notifications()),
                          ),
                        );
                      },
                      child: Container(
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/notifications_black_24dp 1.png'),
                            ),
                            Text(
                              'Notifications',
                              style: TextStyle(color: Color(0xFF7B8D9E)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeRow extends StatelessWidget {
  const TimeRow({
    super.key,
    required this.time,
  });
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        children: [
          Text(
            time,
            style: const TextStyle(
                color: Color(0xFf7D96B5),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            '- - - - - - - - - - - - - - - - - - - - - -',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    required this.color,
    required this.img,
    required this.time,
    required this.name,
    required this.specialty,
    required this.textcolor,
    required this.iconcolor,
  });

  final Color color;
  final String time;
  final String name;
  final String specialty;
  final String img;
  final Color textcolor;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 319,
      height: 112.45,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Image(
                image: AssetImage(img),
              ),
            ),
            Container(
              width: 138,
              height: 70.13,
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(time, style: TextStyle(color: textcolor)),
                  Text(
                    name,
                    style: TextStyle(
                        color: textcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    specialty,
                    style: TextStyle(color: textcolor),
                  ),
                ],
              ),
            ),
            Container(
              child: Icon(
                Icons.menu,
                color: iconcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstRow extends StatelessWidget {
  const FirstRow({
    super.key,
    required this.color,
    required this.numtext,
    required this.text,
    required this.textcolor,
  });

  final Color color;
  final String numtext;
  final String text;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.46,
      height: 84.62,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            numtext,
            style: TextStyle(color: textcolor, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(color: textcolor, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
