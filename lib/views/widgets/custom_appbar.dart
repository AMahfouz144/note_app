import 'package:flutter/material.dart';
import 'package:g_notes/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.icon,
    this.onPressed,
  });
  final String? title;
  final Widget? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
