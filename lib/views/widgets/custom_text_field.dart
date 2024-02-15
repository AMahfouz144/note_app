// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.text,
    this.borderRadius,
    this.lines,
  }) : super(key: key);
  final String? text;
  final double? borderRadius;
  final int? lines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: lines ?? 1,
      decoration: InputDecoration(
          label: Text(text ?? ' '),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius ?? 12),
            ),
          )),
    );
  }
}
