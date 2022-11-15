import 'package:flutter/material.dart';

class AddScreens extends StatelessWidget {
  const AddScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add'),
      ),
      backgroundColor: Colors.black12,
      body: const Center(
        child: Text('Add'),
      ),
    );
  }
}
