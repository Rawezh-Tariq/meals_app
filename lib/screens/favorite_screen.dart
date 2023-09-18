import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('welcome'),
      ),
      body: Column(
        children: [
          Text(name),
          const Text(''),
          const Text(''),
        ],
      ),
    );
  }
}
