import 'package:flutter/material.dart';
import 'package:toku_app/models/home_model.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key, required this.homeModel});
  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: homeModel.onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 15),
        height: 80,
        width: double.infinity,
        color: homeModel.color,
        child: Text(
          homeModel.text,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
    );
  }
}
