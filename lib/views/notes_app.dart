import 'package:flutter/material.dart';
import 'package:g_notes/views/notes_view.dart';
import 'package:g_notes/views/edit_view.dart';
import 'package:g_notes/views/widgets/custom_button.dart';
import 'package:g_notes/views/widgets/custom_text_field.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? title, subtitle;
  final GlobalKey<FormState> formKey = GlobalKey();
  final AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Form(
                    key: formKey,
                    autovalidateMode: autovalidateMode,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        CustomTextField(
                          onSaved: (data) {
                            title = data;
                          },
                          text: 'Title',
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomTextField(
                          text: 'description',
                          lines: 4,
                          onSaved: (data) {
                            subtitle = data;
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomButton(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return EditView();
                            }));
                          },
                          width: double.infinity,
                          hight: 50,
                          child: const Center(
                            child: Text(
                              'Add',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesView(),
    );
  }
}
