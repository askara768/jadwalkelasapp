import 'dart:async';

import 'package:flutter/material.dart';

import 'auth/rahman_login_screen.dart';

class LovelySplashScreen extends StatefulWidget {
  const LovelySplashScreen({super.key});

  @override
  State<LovelySplashScreen> createState() => _LovelySplashScreenState();
}

class _LovelySplashScreenState extends State<LovelySplashScreen> {
  late Timer t;

  @override
  void initState() {
    t = Timer.periodic(
      const Duration(seconds: 5),
      (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RahmanLoginScreen()),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    t.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: SweepGradient(colors: [Colors.black87, Colors.grey]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Icon(Icons.calendar_month, color: Colors.black, size: 60),
            SizedBox(height: 100),
            Text(
              "Jakel Apk",
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    offset: Offset(1, 1),
                    color: Colors.black,
                    blurRadius: 2,
                    spreadRadius: 3,
                  ),
                ],
              ),
            ),
            Text(
              "Jadwal Kelas",
              style: TextStyle(
                color: Colors.black,
                fontSize: 31,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    offset: Offset(1, 1),
                    color: Colors.black,
                    blurRadius: 2,
                    spreadRadius: 3,
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
