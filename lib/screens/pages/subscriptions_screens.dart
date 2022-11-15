import 'package:flutter/material.dart';

class SubcriptionsScreens extends StatelessWidget {
  const SubcriptionsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscriptions'),
      ),
      backgroundColor: Colors.black12,
      body: const Center(
        child: Text('Subscriptions'),
      ),
    );
  }
}
