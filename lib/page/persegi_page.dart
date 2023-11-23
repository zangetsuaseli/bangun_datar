import 'package:bangun_datar_kelas_c/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({Key? key}) : super(key: key);
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Page"),
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/Persegi.png",
            height: 300,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Persegi"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: Colors.green.shade400,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Text(
              "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang semuanya adalah sudut siku-siku atau 90°.",
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: SizedBox(
                    width: 200,
                    child: TextFormField(
                      onChanged: (String value) {
                        _persegiController.sisi = int.parse(value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Sisi",
                        hintText: "Masukkan Sisi",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _persegiController.hitungKeliling();
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
                          _persegiController.hitungluas();
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
                    child: Obx(() => Text(_persegiController.hasil.value, style: TextStyle(color: Color(0xFFFFFFFF)))),
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