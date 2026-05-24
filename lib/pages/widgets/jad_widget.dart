import 'package:flutter/material.dart';

class JadWidget extends StatefulWidget {
final String jurusan;
final String imgc;
  final VoidCallback onTap;
  final double width, height;
  const JadWidget({
    super.key,
    required this.width,
    required this.height, required this.onTap, required this.jurusan, required this.imgc,
  });
  @override
  State<JadWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<JadWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        elevation: 5,
        child: Container(
          width: widget.width,
          height: widget.height,
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.imgc,
                height: 120,
                width: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 5),
              Column(
                children: [
                  Text(
                    widget.jurusan,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}