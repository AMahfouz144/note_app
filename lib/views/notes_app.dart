import 'package:flutter/material.dart';
import 'package:g_notes/views/notes_view.dart';
import 'package:g_notes/views/edit_view.dart';
import 'package:g_notes/views/widgets/custom_button.dart';
import 'package:g_notes/views/widgets/custom_float_action_btn.dart';
import 'package:g_notes/views/widgets/custom_text_field.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const CustomTextField(
                        text: 'Name',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const CustomTextField(
                        text: 'description',
                        lines: 4,
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
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesView(),
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
