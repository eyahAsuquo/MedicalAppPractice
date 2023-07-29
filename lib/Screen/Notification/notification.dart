import 'package:flutter/material.dart';
import '../Report/report.dart';
import '../Schedule/schedule.dart';
import '../home/home.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: const ListTile(
                  title: Text(
                    'Notifications',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: NotificationCard(
                  containercolor: Color(0xFFDCEDF9),
                  img: 'assets/images/Date.png',
                  title: '3 Schedules!'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: NotificationCard(
                  containercolor: Color.fromRGBO(247, 56, 89, 0.5),
                  img: 'assets/images/Text.png',
                  title: '14 Messages'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: NotificationCard(
                  containercolor: Color(0xFFFAF0DB),
                  img: 'assets/images/Medicine.png',
                  title: 'Medicine'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: NotificationCard(
                  containercolor: Color(0xFFD6F6FF),
                  img: 'assets/images/vaccines_black_24dp 1.png',
                  title: 'Vaccine Update'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: NotificationCard(
                  containercolor: Color(0xFFF2E3E9),
                  img: 'assets/images/update_black_24dp 1.png',
                  title: 'App Update'),
            ),

            /*BOTTOM NAVIGATION BAR */
            SizedBox(height: 80),
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

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.containercolor,
    required this.img,
    required this.title,
  });

  final Color containercolor;
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 93,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFD7DDEA),
          width: 3.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: containercolor,
              ),
              child: Image(
                image: AssetImage(img),
              ),
            ),
            SizedBox(width: 10),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Check Your Schedule Today',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
