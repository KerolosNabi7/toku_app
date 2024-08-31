import 'package:flutter/material.dart';
import 'package:toku_app/models/phrases_model.dart';
import 'package:toku_app/widgets/phrases_widget.dart';

class PhrasesView extends StatelessWidget {
  PhrasesView({super.key});
  final List<PhrasesModel> phrases = [
    PhrasesModel(
      eText: "Are you coming",
      jText: "来ますか",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    PhrasesModel(
        eText: "Dont forget to subscribe",
        jText: "お元気ですか",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    PhrasesModel(
        eText: "How are you feeling",
        jText: "お元気でか",
        sound: "sounds/phrases/how_are_you_feeling.wav"),
    PhrasesModel(
        eText: "I love",
        jText: "私は愛する",
        sound: "sounds/phrases/i_love_anime.wav"),
    PhrasesModel(
      eText: "What is your name",
      jText: "あなたの名前は何ですか",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    PhrasesModel(
      eText: "where are you going",
      jText: "たの名前は何ですか",
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    PhrasesModel(
      eText: "Yes i am coming",
      jText: "あなたの名何ですか",
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff50ADC7),
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
            for (int i = 0; i < phrases.length; i++)
              PhrasesWidget(phrasesModel: phrases[i]),
          ],
        ),
      ),
    );
  }
}
