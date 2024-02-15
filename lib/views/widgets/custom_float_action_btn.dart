import 'package:flutter/material.dart';

class CustomFloatButton extends StatelessWidget {
  CustomFloatButton({super.key, required this.onPressed, this.child});
  void Function()? onPressed;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Adding Note',
      shape: const CircleBorder(
        side: BorderSide(
          color: Color.fromARGB(255, 217, 185, 89),
          width: 3,
          strokeAlign: 1,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 251, 97, 86),
      onPressed: () {},
      child: child,
    );
  }
}
