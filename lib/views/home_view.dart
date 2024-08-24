import 'package:flutter/material.dart';
import 'package:toku_app/models/home_model.dart';
import 'package:toku_app/widgets/home_widget.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});
  List<HomeModel> homeModel = [
    HomeModel(
      text: 'Members',
      color: const Color(0xffEF9235),
    ),
    HomeModel(
      text: 'Family members',
      color: const Color(0xff558B37),
    ),
    HomeModel(
      text: 'Colors',
      color: const Color(0xff79359F),
    ),
    HomeModel(
      text: 'Phrases',
      color: const Color(0xff50ADC7),
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
            HomeWidget(homeModel: homeModel[i])
        ],
      ),
    );
  }
}
