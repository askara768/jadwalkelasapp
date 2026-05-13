import 'package:flutter/material.dart';

class RahmanHomePage extends StatefulWidget {
  const RahmanHomePage({super.key});

  @override
  State<RahmanHomePage> createState() => _RahmanHomePageState();
}

class _RahmanHomePageState extends State<RahmanHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
        title: Text("X RPL 1"),
      ),
      body: Column(
        children: [
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
                  Image.asset(""),
                  SizedBox(width: 13),
                  Text('X RPL 2'),
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
                  Image.asset(""),
                  SizedBox(width: 13),
                  Text('X TKJ 1'),
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
                  Image.asset(""),
                  SizedBox(width: 13),
                  Text('X TKJ 2'),
                ],
              ),
            ),
          ),
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
                  Image.asset(""),
                  SizedBox(width: 13),
                  Text('X TKJ 3'),
                ],
              ),
            ),
          ),
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
                  Image.asset(""),
                  SizedBox(width: 13),
                  Text('X TKJ 4'),
                ],
              ),
            ),
          ),
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
                  Image.asset(""),
                  SizedBox(width: 13),
                  Text('X RPL 2'),
                ],
              ),
            ),
          ),
        ],
      ),

      // Container(
      //   width: size.width,
      //   height: size.height,
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(colors: [Colors.blueGrey, Colors.blueAccent]),
      //   ),child: Column(children: [
      //     ElevatedButton(onPressed: () {}, child: Column(children: [
      //       Row(mainAxisAlignment: MainAxisAlignment.start,children: [
      //
      //       ],)
      //     ],))
      // ],),
      // ),
    );
  }
}
