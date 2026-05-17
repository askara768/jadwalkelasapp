import 'package:flutter/material.dart';

class RahmanAnm extends StatefulWidget {
  const RahmanAnm({super.key});

  @override
  State<RahmanAnm> createState() => _RahmanAnmState();
}

class _RahmanAnmState extends State<RahmanAnm> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "X ANM",
                style: TextStyle(color: Colors.black87, fontSize: 25),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: SweepGradient(colors: [Colors.black87, Colors.grey]),
        ),
        child: SingleChildScrollView(
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
                      Image.asset("assets/images/img_5.png"),
                      SizedBox(width: 13),
                      Text('X ANM 1'),
                    ],
                  ),
                ),
              ),
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
                      Image.asset("assets/images/img_5.png"),
                      SizedBox(width: 13),
                      Text('X ANM 2 '),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
