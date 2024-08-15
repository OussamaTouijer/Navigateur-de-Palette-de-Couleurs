import 'package:flutter/material.dart';

class ColorScreen extends StatelessWidget {
  final Color screenColor;
   const ColorScreen(this.screenColor,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: screenColor,
    );
  }
}

