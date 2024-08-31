import 'dart:ui';

class HomeModel {
  final String text;
  final Color color;
  final VoidCallback onTap;
//final Function() onTap;
  const HomeModel(
      {required this.text, required this.color, required this.onTap});
}
