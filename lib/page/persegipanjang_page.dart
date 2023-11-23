import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/persegipanjang_controller.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({Key? key}) : super(key: key);
  final PersegiPanjangController _persegipanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Panjang Page"),
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/Persegi Panjang.png",
            height: 300,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Persegi Panjang"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: Colors.green.shade400,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Text(
              "Persegi panjang merupakan bangun datar yang memiliki dua pasang sisi sama panjang dan sejajar serta besar semua sudutnya adalah 90⁰ atau berbentuk siku-siku. "
                  "Persegi panjang termasuk ke dalam sebuah bentuk geometri dua dimensi yang terdiri dari empat sisi. Dua sisi yang berlawanan memiliki panjang yang sama, "
                  "sedangkan dua sisi lainnya juga memiliki panjang yang sama, tetapi panjangnya berbeda dengan dua sisi pertama. Dengan kata lain, persegi panjang memiliki "
                  "dua pasang sisi sejajar yang panjangnya berbeda.",
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
                            _persegipanjangController.panjang = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Panjang",
                            hintText: "Masukkan Panjang",
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
                            _persegipanjangController.lebar = int.parse(value);
                          },
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Lebar",
                            hintText: "Masukkan Lebar",
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
                          _persegipanjangController.hitungKeliling();
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
                          _persegipanjangController.hitungLuas();
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
                    child: Obx(() => Text(_persegipanjangController.hasil.value, style: TextStyle(color: Color(0xFFFFFFFF)))),
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