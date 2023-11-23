import 'package:bangun_datar_kelas_c/Controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({Key? key}) : super(key: key);
  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Segitiga Page"),
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/Segitiga.png",
            height: 300,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Segitiga Sama Sisi"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: Colors.green.shade400,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Text(
              "Segitiga adalah bentuk bangun datar yang memiliki tiga sisi dan tiga sudut dengan panjang atau besar yang sama maupun berbeda-beda. "
                  "Segitiga sendiri terbagi menjadi dua jenis, yaitu segitiga yang dilihat berdasarkan sisinya dan segitiga yang dilihat berdasarkan besaran sudutnya.",
              textAlign: TextAlign.center, style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          onChanged: (String value) {
                            _segitigaController.alas = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Alas",
                            hintText: "Masukkan Alas",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          onChanged: (String value) {
                            _segitigaController.tinggi = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Tinggi",
                            hintText: "Masukkan Tinggi",
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.blue),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _segitigaController.hitungKeliling();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown.shade800,
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        child: Text("Hitung Keliling", style: TextStyle(color: Color(0xFFFFFFFF))),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _segitigaController.hitungLuas();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        child: Text("Hitung Luas", style: TextStyle(color: Color(0xFFFFFFFF)))),
                  ],
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.orange.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hasil :", style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(() => Text(_segitigaController.hasil.value, style: TextStyle(color: Color(0xFFFFFFFF)))),
                  ),
                  Text("==========================", style: TextStyle(color: Color(0xFFFFFFFF))),
                  Text("Thank You", style: TextStyle(color: Color(0xFFFFFFFF))),
                ],
              )
          ),
        ],
      ),
    );
  }
}