import 'package:bangun_datar_kelas_c/page/lingkaran_page.dart';
import 'package:bangun_datar_kelas_c/page/persegi_page.dart';
import 'package:bangun_datar_kelas_c/page/persegipanjang_page.dart';
import 'package:bangun_datar_kelas_c/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PersegiPage()));
                      },
                      child: CustomMenu(
                        title: "Persegi",
                        imageAsset: "assets/Persegi.png",
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PersegiPanjangPage()));
                      },
                      child: CustomMenu(
                        title: "Persegi Panjang",
                        imageAsset: "assets/Persegi Panjang.png",
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SegitigaPage()));
                      },
                      child: CustomMenu(
                        title: "Segitiga",
                        imageAsset: "assets/Segitiga.png",
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LingkaranPage()));
                      },
                      child: CustomMenu(
                        title: "Lingkaran",
                        imageAsset: "assets/Lingkaran.png",
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
  super.key,
  required this.imageAsset,
  required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.green.shade400,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            ),
          ],
        ));
  }
}