import 'dart:ui';

class RahmanKelasModel {
  final String clas;
  final String imgc;
  final String imgj;
  RahmanKelasModel({
    required this.clas,
    required this.imgc,
    required this.imgj,
  });
}

class Admin {
  final List<RahmanKelasModel> tkr;
  final List<RahmanKelasModel> rpl;
  final List<RahmanKelasModel> tkj;
  final List<RahmanKelasModel> tsm;
  final List<RahmanKelasModel> kpr;
  final List<RahmanKelasModel> dkv;
  final List<RahmanKelasModel> anm;
  final List<RahmanKelasModel> sija;
  final List<RahmanKelasModel> dpib;

  Admin({
    required this.tkr,
    required this.rpl,
    required this.tkj,
    required this.tsm,
    required this.kpr,
    required this.dkv,
    required this.anm,
    required this.sija,
    required this.dpib,
  });
}
