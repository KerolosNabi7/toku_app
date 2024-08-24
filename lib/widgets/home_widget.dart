import 'package:flutter/material.dart';
import 'package:toku_app/models/home_model.dart';

// ignore: must_be_immutable
class HomeWidget extends StatelessWidget {
   HomeWidget({super.key,required this.homeModel});
  HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: homeModel.color,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        child: Text(homeModel.text,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white),),
      ),
    );
  }
}
