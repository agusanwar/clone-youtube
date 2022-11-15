import 'package:flutter/material.dart';

class ExploreScreens extends StatelessWidget {
  const ExploreScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      backgroundColor: Colors.black12,
      body: const Center(
        child: Text('Explore'),
      ),
    );
  }
}
