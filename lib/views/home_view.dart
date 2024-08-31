import 'package:flutter/material.dart';
import 'package:toku_app/models/home_model.dart';
import 'package:toku_app/views/colors_view.dart';
import 'package:toku_app/views/family_members_view.dart';
import 'package:toku_app/views/numbers_view.dart';
import 'package:toku_app/views/phrases_view.dart';
import 'package:toku_app/widgets/home_widget.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});
   late final  List<HomeModel> homeModel;

  @override
  Widget build(BuildContext context) {
    homeModel =  [
      HomeModel(
        text: 'Numbers',
        color: const Color(0xffEF9235),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return NumbersView();
            }),
          );
        },
      ),
      HomeModel(
        text: 'Family members',
        color: const Color(0xff558B37),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return FamilyMembersView();
            }),
          );
        },
      ),
      HomeModel(
        text: 'Colors',
        color: const Color(0xff79359F),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return ColorsView();
            }),
          );
        },
      ),
      HomeModel(
        text: 'Phrases',
        color: const Color(0xff50ADC7),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return PhrasesView();
            }),
          );
        },
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          for (int i = 0; i < homeModel.length; i++)
            HomeWidget(homeModel: homeModel[i]),
          Container(
            height: 416,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/other/gettyimages-1352096257-612x612.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
