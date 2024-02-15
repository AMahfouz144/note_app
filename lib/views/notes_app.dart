import 'package:flutter/material.dart';
import 'package:g_notes/views/notes_view.dart';
import 'package:g_notes/views/test.dart';
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
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      CustomTextField(
                        text: 'Name',
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CustomTextField(
                        text: 'description',
                        lines: 4,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        
                        child: ButtonBar(
                            
                            alignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.opacity,
                                color: Colors.white,
                              )
                            ]),
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
