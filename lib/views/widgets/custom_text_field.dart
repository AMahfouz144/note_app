// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.text,
    this.borderRadius,
    this.lines,
    this.onSaved,
  }) : super(key: key);
  final String? text;
  final double? borderRadius;
  final int? lines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this field is required';
        } else {
          return null;
        }
      },
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
