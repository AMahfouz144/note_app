import 'package:flutter/material.dart';
import 'package:g_notes/views/widgets/custom_appbar.dart';
import 'package:g_notes/views/widgets/custom_text_field.dart';

class EditView extends StatelessWidget {
  EditView({super.key, this.title});
  Widget? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: CustomAppBar(
                  title: 'Edit Note',
                  icon: const Icon(
                    Icons.check,
                  ),
                  onPressed: () {
                    print('Hello');
                  },
                ),
              ),
              const CustomTextField(
                text: 'Name',
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                text: 'description',
                lines: 5,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
