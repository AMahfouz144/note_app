import 'package:flutter/material.dart';
import 'package:g_notes/views/widgets/custom_note.dart';

class CustomNotes extends StatelessWidget {
  const CustomNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: CustomNote(),
        );
      },
    );
  }
}
