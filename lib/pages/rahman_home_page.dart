import 'package:flutter/material.dart';

class RahmanHomePage extends StatefulWidget {
  const RahmanHomePage({super.key});

  @override
  State<RahmanHomePage> createState() => _RahmanHomePageState();
}

class _RahmanHomePageState extends State<RahmanHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () => context,
                child: Image.asset(
                  "assets/images/kitsune.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
