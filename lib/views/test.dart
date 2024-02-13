import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  Test({super.key, this.title});
  Widget? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
