import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int lebar = 0;
  int panjang = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = panjang * lebar;
    hasil.value = "Hasil Perhitungan Luas Persegi Panjang dari $panjang x $lebar adalah $hitung";
  }

  void hitungKeliling(){
    int hitung = 2 * (panjang + lebar);
    hasil.value = "Hasil Perhitungan Keliling Persegi Panjang dari 2 x ($panjang + $lebar) adalah $hitung";
  }
}