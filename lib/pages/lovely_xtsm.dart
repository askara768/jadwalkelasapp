import 'package:flutter/material.dart';

class LovelyXtsm extends StatefulWidget {
  const LovelyXtsm({super.key});

  @override
  State<LovelyXtsm> createState() => _LovelyXtsmState();
}

class _LovelyXtsmState extends State<LovelyXtsm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Card(
            margin: EdgeInsets.all(0),
            color: Colors.white,
            child: Text(
              "Andika Rahman Bagaskara",
              style: TextStyle(color: Colors.black87, fontSize: 25),
            ),
          ),
        ],
        title: Text("X TSM 1"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/img_2.png"),
                    SizedBox(width: 13),
                    Text('X TSM 2'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
