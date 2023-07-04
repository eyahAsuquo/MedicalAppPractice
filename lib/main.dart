import 'package:flutter/material.dart';

void main() {
  runApp(const MedicalApp());
}

class MedicalApp extends StatelessWidget {
  const MedicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  title: Text('👋 Hello!'),
                  subtitle: Text(
                    'Shahin Alam',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Image(
                    image: AssetImage('assets/images/Rectangle 9.png'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFEEF6FC),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.draw_outlined),
                    hintText: 'Search Medical...',
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Services',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RowOne(
                      color: Color(0xFFDCEDF9),
                      image: 'assets/images/Doctor Icon.png'),
                  RowOne(
                      color: Color(0xFFFAF0DB),
                      image: 'assets/images/noun-pill-12691 1.png'),
                  RowOne(
                      color: Color(0xFFD6F6FF),
                      image: 'assets/images/noun-medical-test-2972712 1.png'),
                  RowOne(
                      color: Color(0xFFF2E3E9),
                      image: 'assets/images/noun-corona-3399685 1.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 320.17,
                height: 169.38,
                decoration: BoxDecoration(
                  color: const Color(0xFFDCEDF9),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 168,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get The Best Medical Service',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Lorem Ipsum is a Latin Text, you can use it as text ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ),
                      const Image(
                        image: AssetImage(
                            'assets/images/imgbin-physician-hospital-medicine-doctor-dentist-doctor-MvjeZ7XWhJkkxsq5WJJQFWNcK-removebg-preview 1.png'),
                      ),
                    ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Upcoming Appointments',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 282,
                    height: 120.73,
                    decoration: BoxDecoration(
                      color: const Color(0xFF155A96),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 71.46,
                            height: 99.03,
                            decoration: BoxDecoration(
                              color: const Color(0xFF155A96),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(97, 9, 1, 46)
                                      .withOpacity(0.09),
                                  spreadRadius: 5,
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '12',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  'Tue',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 138,
                            height: 70.13,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '09:30 AM',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                Text(
                                  'Dr. Mim Akhter',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Depression',
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.50),
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.menu_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 45),
            Container(
              height: 50,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
                    Container(
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
                    Container(
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
                    Container(
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
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class RowOne extends StatelessWidget {
  const RowOne({
    super.key,
    required this.color,
    required this.image,
  });
  final Color color;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71.41,
      height: 71.41,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(18)),
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}
