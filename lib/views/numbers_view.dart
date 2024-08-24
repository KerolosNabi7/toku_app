// import 'package:flutter/material.dart';
// import 'package:toku_app/models/item_model.dart';
// import 'package:toku_app/widgets/item_widget.dart';

// class NumbersView extends StatelessWidget {
//    NumbersView({super.key});
//   List<ItemModel> item_model =[
//     ItemModel(jText: "fkdlfdkf"),
//      ItemModel(jText: "fkdlfdkf"),
//       ItemModel(jText: "fkdlfdkf"),
//   ];
//   ItemModel item_model1 = ItemModel(jText: "dfdffd");
//   ItemModel item_model2 = ItemModel(jText: "dfdffdhgfdfghj");
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           ListView.builder(itemBuilder: item_model.length)
//           ItemWidget(itemModel: item_model[0]),
//           ItemWidget(itemModel: item_model[1]),
//           ItemWidget(itemModel: item_model[2]),
//         ],
//       )
//     );
//   }
// }