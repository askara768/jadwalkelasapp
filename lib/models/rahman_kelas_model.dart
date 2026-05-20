class RahmanKelasModel {
  final int id;
  final String clas;
  final String imgc;
  final String imgj;
  RahmanKelasModel({
    required this.clas,
    required this.imgc,
    required this.imgj,
    required this.id,
  });
}

class Blyadd {
  final int ind;
  final String namaJurusan;
  final List<RahmanKelasModel> fill;

  Blyadd({required this.ind, required this.namaJurusan, required this.fill});
}
