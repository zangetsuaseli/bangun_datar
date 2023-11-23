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
        backgroundColor: colors.blue.shade300,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: CustomMenu(title: "Persegi", imageAsset: "assets/img.png"))
                Expanded(child: CustomMenu(title: "Persegi", imageAsset: "assets/img.png"))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CustomMenu(title: "Persegi", imageAsset: "assets/img.png"))
                Expanded(child: CustomMenu(title: "Persegi", imageAsset: "assets/img.png"))
              ],
            ),
          )
        ]
      ),
    );
  },
},
