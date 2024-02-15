import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.hight, this.width, this.color});
  final double? width;
  final double? hight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      width: width,
      height: hight,
      color: color,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              colors: [Colors.white70, Colors.amber, Colors.blueGrey])),
    ));
  }
}
