import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LovelyRegisterScreen extends StatefulWidget {
  const LovelyRegisterScreen({super.key});

  @override
  State<LovelyRegisterScreen> createState() => _LovelyRegisterScreenState();
}

class _LovelyRegisterScreenState extends State<LovelyRegisterScreen> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _isSecure = true;
  IconData _icon = Icons.remove_red_eye;
  bool _rememberMe = true;

  void isSecure() {
    setState(() {
      if (_isSecure) {
        _isSecure = false;
        _icon = CupertinoIcons.eye_slash;
      } else {
        _isSecure = true;
        _icon = CupertinoIcons.eye_fill;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(size.width / 5),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: size.width,
          height: size.width,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.greenAccent.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(1.5, 1.5),
                color: Colors.purple.withValues(alpha: 0.6),
                blurRadius: 5,
                spreadRadius: 3,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),
                Text(
                  "Silahkan Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _username,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.greenAccent.withValues(alpha: 0.4),
                    hintText: "Username",
                    labelText: "Tulis Username Kamu",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefix: Icon(Icons.person, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _password,
                  keyboardType: TextInputType.text,
                  obscureText: _isSecure,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.greenAccent.withValues(alpha: 0.4),
                    hintText: "Password",
                    labelText: "Tulis Password Kamu",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefix: Icon(Icons.security, color: Colors.grey),
                    suffix: IconButton(onPressed: isSecure, icon: Icon(_icon)),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = !_rememberMe;
                        });
                      },
                    ),
                    Text("Remember Me", style: TextStyle(color: Colors.white)),
                  ],
                ),
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
                SizedBox(height: 20),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Belum Punya Akun?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LovelyRegisterScreen(),
                        ),
                      ),
                      child: Text(
                        "Daftar?",
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
