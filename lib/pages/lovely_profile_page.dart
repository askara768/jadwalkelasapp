import 'package:flutter/material.dart';
import 'package:jadwalkelasapp/pages/rahman_home_page.dart';

class LovelyProfilePage extends StatefulWidget {
  const LovelyProfilePage({super.key});

  @override
  State<LovelyProfilePage> createState() => _LovelyProfilePageState();
}

class _LovelyProfilePageState extends State<LovelyProfilePage> {
  String username = "velyuu";
  String id = "1320097";
  String email = "vely@gmail.com";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RahmanHomePage()),
                    );
                  },
                  icon: Icon(Icons.arrow_back, size: 35),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 320,
                height: 470,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),

                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/img_10.png'),
                    ),
                    SizedBox(height: 40),
                    buildBox(username),
                    SizedBox(height: 25),
                    buildBox(id),
                    SizedBox(height: 25),
                    buildBox(email),

                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        minimumSize: WidgetStatePropertyAll(
                          Size(size.width - 80, 50),
                        ),
                      ),
                      child: Text("Sumbit"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBox(String text) {
    return Container(
      width: 250,
      height: 60,

      padding: const EdgeInsets.symmetric(horizontal: 20),

      alignment: Alignment.centerLeft,

      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(30),
      ),

      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
