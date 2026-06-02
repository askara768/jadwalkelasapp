import 'package:flutter/material.dart';
import 'package:jadwalkelasapp/pages/auth/rahman_login_screen.dart';

class LovelyRegisterScreen extends StatefulWidget {
  const LovelyRegisterScreen({super.key});

  @override
  State<LovelyRegisterScreen> createState() => _LovelyRegisterScreenState();
}

class _LovelyRegisterScreenState extends State<LovelyRegisterScreen> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _confrimPassword = TextEditingController();

  bool _obscure = true;
  bool _iobscure = true;
  IconData _isObsercureIcon = Icons.remove_red_eye;
  IconData _obsercureIcon = Icons.remove_red_eye;

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

  void iobsercure() {
    if (_iobscure) {
      _iobscure = false;
      _obsercureIcon = Icons.remove_red_eye_outlined;
    } else {
      _iobscure = true;
      _obsercureIcon = Icons.remove_red_eye;
    }
  }

  void iobscure() {
    setState(() {
      _iobscure = !_iobscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: SweepGradient(colors: [Colors.black87, Colors.grey]),
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
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Confrim Password",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      controller: _confrimPassword,
                      keyboardType: TextInputType.text,
                      obscureText: _iobscure,
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              iobsercure();
                            });
                          },
                          icon: Icon(_obsercureIcon, color: Colors.black),
                        ),
                        hintText: "Confirm Password",
                        alignLabelWithHint: true,
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            fixedSize: WidgetStatePropertyAll(Size(200, 1)),
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.redAccent,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RahmanLoginScreen(),
                                ),
                              );
                            });
                          },
                          child: Text(
                            "Sudah punya akun?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            fixedSize: WidgetStatePropertyAll(Size(200, 1)),
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.blueAccent,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              if (_password.text == "velyuu" &&
                                  _confrimPassword.text == "vely") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RahmanLoginScreen(),
                                  ),
                                );
                                showDialog(
                                  context: context,
                                  builder: (context) =>
                                      AlertDialog(title: Text("Daftar Sukses")),
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) =>
                                      AlertDialog(title: Text("Daftar Gagal")),
                                );
                              }
                            });
                          },
                          child: Text(
                            "daftar",
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
