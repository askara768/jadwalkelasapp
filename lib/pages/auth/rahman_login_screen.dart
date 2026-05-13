import 'package:flutter/material.dart';
import 'package:jadwalkelasapp/pages/rahman_home_page.dart';

import 'lovely_register_screen.dart';

class RahmanLoginScreen extends StatefulWidget {
  const RahmanLoginScreen({super.key});

  @override
  State<RahmanLoginScreen> createState() => _RahmanLoginScreenState();
}

class _RahmanLoginScreenState extends State<RahmanLoginScreen> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _loggedUsername = TextEditingController(text: 'Adada');
  TextEditingController _loggedPassword = TextEditingController(text: 'ikann');
  bool showPW = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Jadwal Kelas', style: TextStyle(fontSize: 50)),
                Text('Login', style: TextStyle(fontSize: 25)),
                SizedBox(height: 50),
                TextField(
                  controller: _username,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Tulis Username',
                    label: Text('Username'),
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _password,
                  keyboardType: TextInputType.text,
                  obscureText: showPW,
                  decoration: InputDecoration(
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          showPW = !showPW;
                        });
                      },
                      icon: Icon(
                        showPW
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                      ),
                    ),
                    hintText: 'Tulis Password',
                    label: Text('Password'),
                    fillColor: Colors.grey,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LovelyRegisterScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Daftar',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {
                    if (_username.text == _loggedUsername.text &&
                        _password.text == _loggedPassword.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RahmanHomePage(),
                        ),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('! Login Gagal'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
