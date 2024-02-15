import 'package:flutter/material.dart';
import 'package:g_notes/constant/const.dart';
import 'package:g_notes/views/notes_app.dart';
import 'package:g_notes/views/edit_view.dart';
import 'package:hive_flutter/adapters.dart';
// ignore: depend_on_referenced_packages

void main() async {
  runApp(const NotesApp());
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
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
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => EditView(title: Text('Edit page')),
      },
    );
  }
}
