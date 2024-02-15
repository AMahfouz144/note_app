import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.hight,
    this.width,
    this.color,
    this.child,
    this.onTap,
  });
  final double? width;
  final double? hight;
  final Color? color;
  final Widget? child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        width: width,
        height: hight,
        color: color,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [
            Colors.white70,
            Color.fromARGB(255, 115, 210, 226),
            Color.fromARGB(255, 206, 229, 240),
            Color.fromARGB(255, 206, 229, 240),
            Color.fromARGB(255, 157, 211, 236),
          ],
        ),
      ),
      child: child,
    ));
  }
}
