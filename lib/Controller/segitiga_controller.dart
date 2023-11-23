import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  int tinggi = 0;
  final hasil = "".obs;

  void hitungLuas(){
    num hitung = 0.5 * (alas * tinggi);
    hasil.value = "Hasil Perhitungan Luas Segitiga dari 1/2 x ($alas x $tinggi) adalah $hitung";
  }

  void hitungKeliling(){
    int hitung = alas + alas + alas;
    hasil.value = "Hasil Perhitungan Keliling Segitiga dari $alas + $alas + $alas adalah $hitung";
  }
}