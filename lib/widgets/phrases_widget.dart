import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrases_model.dart';

class PhrasesWidget extends StatelessWidget {
  const PhrasesWidget({super.key, required this.phrasesModel});
  final PhrasesModel phrasesModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    
         Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                phrasesModel.jText,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(
                phrasesModel.eText,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: IconButton(
            color: Colors.white,
            iconSize: 40,
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(phrasesModel.sound));
            },
            icon: const Icon(Icons.arrow_right),
          ),
        ),
      ],
    );
  }
}
