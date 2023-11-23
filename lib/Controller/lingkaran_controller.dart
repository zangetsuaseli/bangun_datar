import 'dart:math' show pi;
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  num Pi = pi;
  num jarijari = 0;
  final hasil = "".obs;

  void hitungLuas(){
    num hitung = pi * (jarijari * jarijari);
    hasil.value = "Hasil Perhitungan Luas Lingkaran dari $jarijari adalah $hitung";
  }

  void hitungKeliling(){
    num hitung = 2 * (pi * jarijari);
    hasil.value = "Hasil Perhitungan Keliling Lingkaran dari 2 x (3.14 x $jarijari) adalah $hitung";
  }
}