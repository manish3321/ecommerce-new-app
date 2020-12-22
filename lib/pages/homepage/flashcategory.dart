import 'package:flutter/material.dart';

class FlashCategory extends StatefulWidget {
  @override
  _FlashCategoryState createState() => _FlashCategoryState();
}

class _FlashCategoryState extends State<FlashCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 150,
      width: MediaQuery.of(context).size.width * 0.90,
    );
  }
}
