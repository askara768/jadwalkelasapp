import 'package:flutter/cupertino.dart';

class RahmanKelasModel {
  final String jurusan;
  final String imgc;
  final List<Perclass> cl;
  RahmanKelasModel({required this.jurusan, required this.imgc, required this.cl});
}

class Perclass {
  final int id;
  final String classJurusan;
  final String imgj;

  Perclass({required this.id, required this.classJurusan, required this.imgj});
}
