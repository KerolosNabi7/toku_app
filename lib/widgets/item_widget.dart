import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

// ignore: must_be_immutable
class ItemWidget extends StatelessWidget {
  ItemWidget({required this.itemModel, super.key});
  ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: double.infinity,
      color: Colors.amber,
      child: Row(
        children: [
          // Text(itemModel.eText),
          // Image.asset(itemModel.image),
              Text(itemModel.jText),
        ],
      ),
    );
  }
}
