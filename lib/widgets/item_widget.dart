import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

// ignore: must_be_immutable
class ItemWidget extends StatelessWidget {
  ItemWidget({required this.itemModel, super.key});
  ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      // color: Colors.amber,
      child: Row(
        children: [
          Container(
            child: Image.asset(
              itemModel.image,
              height: 100,
            ),
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              '${itemModel.jText}\n${itemModel.eText}',
              style: const TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_right),
            ),
          ),
        ],
      ),
    );
  }
}
