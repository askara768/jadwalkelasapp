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
      appBar: AppBar(title: Text("profile")),
      body: Center(child: Text("Coming Soon")),
    );
  }
}
