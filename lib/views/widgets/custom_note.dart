import 'package:flutter/material.dart';
import 'package:g_notes/views/widgets/custom_Llist_tile.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(116, 244, 121, 39),
        borderRadius: BorderRadius.circular(16),
      ),
      child: CustomListTile(
        trailing: const Icon(
          Icons.delete,
          color: Colors.black,
          size: 30,
        ),
        title: const Text(
          'Hello in My App',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: const Text(
          'create by abd_EL_Rahman mahfouz',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
