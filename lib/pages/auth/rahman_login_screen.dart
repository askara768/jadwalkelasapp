
import 'package:flutter/material.dart';
import 'package:jadwalkelasapp/pages/rahman_home_page.dart';

import 'lovely_register_screen.dart';

class RahmanLoginScreen extends StatefulWidget {
  const RahmanLoginScreen({super.key});

  @override
  State<RahmanLoginScreen> createState() => _RahmanLoginScreenState();
}

class _RahmanLoginScreenState extends State<RahmanLoginScreen> {
  final _username = TextEditingController();
  final _password = TextEditingController();

  bool _obscure = true;
  IconData _isObsercureIcon = Icons.remove_red_eye;

  void isObsercureTex() {
    if (_obscure) {
      _obscure = false;
      _isObsercureIcon = Icons.remove_red_eye_outlined;
    } else {
      _obscure = true;
      _isObsercureIcon = Icons.remove_red_eye;
    }
  }

  void isObscure() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(gradient: SweepGradient(colors: [Colors.black87,Colors.grey])
        ),
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              color: Colors.black45,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Jadwal Kelas",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      controller: _username,
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Username",
                        alignLabelWithHint: true,
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      controller: _password,
                      keyboardType: TextInputType.text,
                      obscureText: _obscure,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsercureTex();
                            });
                          },
                          icon: Icon(_isObsercureIcon, color: Colors.black),
                        ),
                        hintText: "Password",
                        alignLabelWithHint: true,
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ElevatedButton(
                        style: ButtonStyle(fixedSize: WidgetStatePropertyAll(Size(200, 1),),backgroundColor: WidgetStatePropertyAll( Colors.redAccent,)),
                        onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LovelyRegisterScreen(),));
                          });
                        },
                        child: Text(
                          "Daftar",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                        SizedBox(height: 10,),
                        ElevatedButton(
                          style: ButtonStyle(fixedSize: WidgetStatePropertyAll(Size(200, 1),),backgroundColor: WidgetStatePropertyAll( Colors.blueAccent,)),
                          onPressed: () {
                            setState(() {
                              if (_username.text == "pelyuu" && _password.text == "vely") {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => RahmanHomePage(),));
                                showDialog(
                                  context: context,
                                  builder: (context) =>
                                      AlertDialog(title: Text("Login Sukses")),
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) =>
                                      AlertDialog(title: Text("Login Gagal")),
                                );
                              }
                            });
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
