import 'package:flutter/material.dart';

import '../models/rahman_kelas_model.dart';
import '../services/rahman_kelas_services.dart';

class RahmanJadwal extends StatefulWidget {
  final int id;
  const RahmanJadwal({super.key, required this.id});

  @override
  State<RahmanJadwal> createState() => _RahmanJadwalState();
}

class _RahmanJadwalState extends State<RahmanJadwal> {
  late RahmanKelasModel cla;
  @override
  void initState() {
    cla = jur.firstWhere((element) => element.cl[widget.id].id == widget.id);
    super.initState();
  }

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
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, s) => Image.asset(
            cla.cl[s].imgj,
            fit: BoxFit.cover,
            width: 200,
            height: 500,
          ),
        ),
      ),
    );
  }
}
