import 'package:flutter/material.dart';

class LovelyProfilePage extends StatefulWidget {
  const LovelyProfilePage({super.key});

  @override
  State<LovelyProfilePage> createState() => _LovelyProfilePageState();
}

class _LovelyProfilePageState extends State<LovelyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PROFILE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
