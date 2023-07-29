import 'package:flutter/material.dart';
import 'package:medicalapp/Screen/home/home.dart';
// import 'package:medicalapp/Screen/Report/report.dart';
// import 'package:medicalapp/Screen/Notification/notification.dart';
// import 'package:medicalapp/Screen/Schedule/schedule.dart';



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
