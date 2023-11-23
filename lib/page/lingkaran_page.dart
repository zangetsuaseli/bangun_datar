import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/lingkaran_controller.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({Key? key}) : super(key: key);
  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lingkaran Page"),
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/Lingkaran.png",
            height: 300,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Lingkaran"),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: Colors.green.shade400,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Text(
              "Lingkaran adalah himpunan semua titik dalam bidang datar yang berjarak sama dari suatu titik tetap yang disebut pusat. "
                  "Jarak ini disebut jari-jari (r) lingkaran. Titik pusat dan jari-jari sangat penting dalam mendefinisikan lingkaran.",
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
                        _lingkaranController.jarijari = int.parse(value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Jari-Jari",
                        hintText: "Masukkan Jari-Jari",
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
                          _lingkaranController.hitungKeliling();
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
                          _lingkaranController.hitungLuas();
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
                    child: Obx(() => Text(_lingkaranController.hasil.value, style: TextStyle(color: Color(0xFFFFFFFF)))),
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
