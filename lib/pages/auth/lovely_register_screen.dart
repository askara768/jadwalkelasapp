import 'package:flutter/material.dart';
import 'package:jadwalkelasapp/pages/auth/rahman_login_screen.dart';

class LovelyRegisterScreen extends StatefulWidget {
  const LovelyRegisterScreen({super.key});

  @override
  State<LovelyRegisterScreen> createState() => _LovelyRegisterScreenState();
}

class _LovelyRegisterScreenState extends State<LovelyRegisterScreen> {
  TextEditingController _nickname = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController(text: "pwpwpwpw");
  TextEditingController _confirmPassword = TextEditingController(
    text: "pwpwpwpw",
  );
  bool showDafPW = true;
  bool showDafCPW = true;

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
                Text('Daftar', style: TextStyle(fontSize: 25)),
                SizedBox(height: 50),
                TextField(
                  controller: _nickname,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Tulis Nickname',
                    label: Text('Nickname'),
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
                  obscureText: showDafPW,
                  decoration: InputDecoration(
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          showDafPW = !showDafPW;
                        });
                      },
                      icon: Icon(
                        showDafPW
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye,
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
                SizedBox(height: 10),
                TextField(
                  controller: _confirmPassword,
                  keyboardType: TextInputType.text,
                  obscureText: showDafCPW,
                  decoration: InputDecoration(
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          showDafCPW = !showDafCPW;
                        });
                      },
                      icon: Icon(
                        showDafCPW
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                      ),
                    ),
                    hintText: 'Konfirmasi Password',
                    label: Text('Konfirmasi Password'),
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
                        builder: (context) => RahmanLoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Batal',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {
                    if (_password.text == _confirmPassword.text) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Pendaftaran Berhasil'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('! Pendaftar Gagal'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Confirm',
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
