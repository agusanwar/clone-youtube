import 'package:flutter/material.dart';

class LibraryScreens extends StatelessWidget {
  const LibraryScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
      ),
      backgroundColor: Colors.black12,
      body: const Center(
        child: Text('Library'),
      ),
    );
  }
}
