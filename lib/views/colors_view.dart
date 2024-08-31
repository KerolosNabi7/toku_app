import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/item_widget.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});
  final List<ItemModel> colors = const [
    ItemModel(
      jText: "blko",
      eText: "black",
      image: "assets/images/colors/color_black.png",
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      jText: "tilo",
      eText: "brown",
      image: "assets/images/colors/color_brown.png",
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      jText: "oketo",
      eText: "dusty yellow",
      image: "assets/images/colors/color_dusty_yellow.png",
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      jText: "Gode",
      eText: "gray",
      image: "assets/images/colors/color_gray.png",
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      jText: "meto",
      eText: "green",
      image: "assets/images/colors/color_green.png",
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      jText: "aka",
      eText: "red",
      image: "assets/images/colors/color_red.png",
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      jText: "Sen",
      eText: "white",
      image: "assets/images/colors/color_white.png",
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      jText: "ko",
      eText: "yellow",
      image: "assets/images/colors/yellow.png",
      sound: 'sounds/colors/yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff79359F),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Colors',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < colors.length; i++)
              ItemWidget(itemModel: colors[i]),
          ],
        ),
      ),
    );
  }
}
