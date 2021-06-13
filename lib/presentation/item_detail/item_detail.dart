import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({Key? key, required this.foodimg}) : super(key: key);

  final String foodimg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Image.asset(
        foodimg,
        fit: BoxFit.cover,
      )),
    );
  }
}
