import 'package:flutter/material.dart';
import 'package:jadwalkelasapp/pages/lovely_profile_page.dart';
import 'package:jadwalkelasapp/pages/lovely_xdkv.dart';
import 'package:jadwalkelasapp/pages/lovely_xkpr.dart';
import 'package:jadwalkelasapp/pages/lovely_xtsm.dart';
import 'package:jadwalkelasapp/pages/rahman_anm.dart';
import 'package:jadwalkelasapp/pages/rahman_dpib.dart';
import 'package:jadwalkelasapp/pages/rahman_sija.dart';
import 'package:jadwalkelasapp/pages/rahman_xrpl.dart';
import 'package:jadwalkelasapp/pages/rahman_xtkj.dart';
import 'package:jadwalkelasapp/pages/rahman_xtkr.dart';

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
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: SweepGradient(colors: [Colors.black, Colors.black]),
          ),
        ),
        leading: GestureDetector(
          child: ClipOval(child: Image.asset("assets/images/kitsune.jpg")),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LovelyProfilePage()),
          ),
        ),
        title: Column(
          children: [
            Text("Velyuu", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text(
              "X RPL 1",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(colors: [Colors.black87, Colors.grey]),
        ),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("JADWAL", style: TextStyle(color: Colors.white),),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RahmanXtkr()),
                  );
                },
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
                      Text('X TKR '),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RahmanXrpl()),
                  );
                },
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
                      Image.asset("assets/images/img.png", fit: BoxFit.cover),
                      SizedBox(width: 13),
                      Text('X RPL '),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RahmanXtkj()),
                  );
                },
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
                      Image.asset("assets/images/img_1.png"),
                      SizedBox(width: 13),
                      Text('X TKJ '),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LovelyXtsm()),
                  );
                },
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
                      Image.asset("assets/images/img_3.png"),
                      SizedBox(width: 13),
                      Text('X TSM '),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LovelyXkpr()),
                  );
                },
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
                      Image.asset("assets/images/img_4.png"),
                      SizedBox(width: 13),
                      Text('X KPR '),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RahmanAnm()),
                  );
                },
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
                      Text('X ANM '),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LovelyXdkv()),
                  );
                },
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
                      Image.asset("assets/images/img_7.png"),
                      SizedBox(width: 13),
                      Text('X DKV '),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RahmanSija()),
                  );
                },
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
                      Image.asset("assets/images/img_8.png"),
                      SizedBox(width: 13),
                      Text('X SIJA '),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RahmanDpib()),
                  );
                },
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
                      Image.asset("assets/images/img_9.png"),
                      SizedBox(width: 13),
                      Text('X DPIB '),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
