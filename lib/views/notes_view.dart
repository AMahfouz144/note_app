import 'package:flutter/material.dart';
import 'package:g_notes/views/widgets/custom_appbar.dart';
import 'package:g_notes/views/widgets/custom_notes.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        CustomAppBar(),
        SizedBox(
          height: 24,
        ),
        Expanded(
          child: CustomNotes(),
        ),
      ]),
    );
  }
}
