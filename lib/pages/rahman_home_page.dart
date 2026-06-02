import 'package:flutter/material.dart';
import 'package:jadwalkelasapp/pages/lovely_profile_page.dart';
import 'package:jadwalkelasapp/pages/rahman_jadwal.dart';
import 'package:jadwalkelasapp/services/rahman_kelas_services.dart';

class RahmanHomePage extends StatefulWidget {
  const RahmanHomePage({super.key});

  @override
  State<RahmanHomePage> createState() => _RahmanHomePageState();
}

class _RahmanHomePageState extends State<RahmanHomePage> {
  //pop up class
  void showKelasDialog(BuildContext context, int s) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Kelas ${jur[s].jurusan}'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: jur[s].cl.length,
            itemBuilder: (context, i) {
              return GestureDetector(
                child: Text(jur[s].cl[i].classJurusan),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RahmanJadwal(id: jur[s].cl[i].id),
                  ),
                ),
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Tutup'),
          ),
        ],
      ),
    );
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
        leading: GestureDetector(
          child: ClipOval(child: Image.asset("assets/images/img_10.png")),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LovelyProfilePage()),
          ),
        ),
        title: Column(
          children: [
            Text("Velyuu", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text(
              "X RPL 1",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(colors: [Colors.black87, Colors.grey]),
        ),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("JADWAL", style: TextStyle(color: Colors.white)),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(10),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: jur.length,
                  itemBuilder: (context, s) {
                    return GestureDetector(
                      onTap: () => showKelasDialog(context, s),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 12),
                        width: size.width,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white24),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                jur[s].imgc,
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              jur[s].jurusan,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white54,
                              size: 16,
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
