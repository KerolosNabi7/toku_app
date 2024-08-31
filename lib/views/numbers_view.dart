import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/item_widget.dart';

// ignore: must_be_immutable
class NumbersView extends StatelessWidget {
  NumbersView({super.key});

  List<ItemModel> itemModel =const [
     ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jText: 'ichi',
      eText: 'one',
      image: 'assets/images/numbers/number_one.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jText: 'Ni',
      eText: 'two',
      image: 'assets/images/numbers/number_two.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_three_sound.mp3',
      jText: 'San',
      eText: 'three',
      image: 'assets/images/numbers/number_three.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_four_sound.mp3',
      jText: 'Shi',
      eText: 'four',
      image: 'assets/images/numbers/number_four.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_five_sound.mp3',
      jText: 'Go',
      eText: 'five',
      image: 'assets/images/numbers/number_five.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_six_sound.mp3',
      jText: 'Roku',
      eText: 'six',
      image: 'assets/images/numbers/number_six.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      jText: 'Sebun',
      eText: 'seven',
      image: 'assets/images/numbers/number_seven.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      jText: 'hachi',
      eText: 'eight',
      image: 'assets/images/numbers/number_eight.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      jText: 'Kyū',
      eText: 'nine',
      image: 'assets/images/numbers/number_nine.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      jText: 'Jū',
      eText: 'ten',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Numbers',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i != itemModel.length; i++)
              ItemWidget(itemModel: itemModel[i]),
          ],
        ),
      ),
    );
  }
}
