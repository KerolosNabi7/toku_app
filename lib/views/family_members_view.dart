import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/item_widget.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});
  final List<ItemModel> itemModel = const [
    ItemModel(
      jText: "chich",
      eText: "Father",
      image: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/father.wav",
    ),
    ItemModel(
      jText: "Musume",
      eText: "Daughter",
      image: "assets/images/family_members/family_daughter.png",
      sound: "sounds/family_members/daughter.wav",
    ),
    ItemModel(
      jText: "Ojasin",
      eText: "Grandfather",
      image: "assets/images/family_members/family_grandfather.png",
      sound: "sounds/family_members/grand father.wav",
    ),
    ItemModel(
      jText: "Hahooyo",
      eText: "Mother",
      image: "assets/images/family_members/family_mother.png",
      sound: "sounds/family_members/mother.wav",
    ),
    ItemModel(
      jText: "Sobo",
      eText: "Grandmother",
      image: "assets/images/family_members/family_grandmother.png",
      sound: "sounds/family_members/grand mother.wav",
    ),
    ItemModel(
      jText: "Nisan",
      eText: "Old brother",
      image: "assets/images/family_members/family_older_brother.png",
      sound: "sounds/family_members/older bother.wav",
    ),
    ItemModel(
      jText: "Ane",
      eText: "Sister",
      image: "assets/images/family_members/family_older_sister.png",
      sound: "sounds/family_members/older sister.wav",
    ),
    ItemModel(
      jText: "Musuko",
      eText: "Son",
      image: "assets/images/family_members/family_son.png",
      sound: "sounds/family_members/son.wav",
    ),
    ItemModel(
      jText: "dfrt",
      eText: "Younger brother",
      image: "assets/images/family_members/family_younger_brother.png",
      sound: "sounds/family_members/younger brohter.wav",
    ),
    ItemModel(
      jText: "opse",
      eText: "Younger sister",
      image: "assets/images/family_members/family_younger_sister.png",
      sound: "sounds/family_members/younger sister.wav",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff558B37),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Family Members',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < itemModel.length; i++)
              ItemWidget(itemModel: itemModel[i]),
          ],
        ),
      ),
    );
  }
}
