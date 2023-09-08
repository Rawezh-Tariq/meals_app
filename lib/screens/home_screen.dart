import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Category'),
        Row(),
        SizedBox(height: 10),
        Text('Category'),
        Row(),
        SizedBox(height: 10),
        Text('Category'),
        Row(),
        SizedBox(height: 10),
        Text('Category'),
        Row(),
        SizedBox(height: 10),
      ],
    );
  }
}
