import 'package:flutter/material.dart';
import 'package:g_notes/views/notes_app.dart';
// ignore: depend_on_referenced_packages

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MyApp(),
    );
  }
}
