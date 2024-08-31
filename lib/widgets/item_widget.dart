import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

// ignore: must_be_immutable
class ItemWidget extends StatelessWidget {
  const ItemWidget({required this.itemModel, super.key});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            itemModel.image,
            height: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemModel.jText,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(
                itemModel.eText,
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
              player.play(AssetSource(itemModel.sound));
            },
            icon: const Icon(Icons.arrow_right),
          ),
        ),
      ],
    );
  }
}
