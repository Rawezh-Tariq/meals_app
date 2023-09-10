import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Category', style: Theme.of(context).textTheme.titleMedium),
        const Row(),
        const SizedBox(height: 10),
        Text('Category', style: Theme.of(context).textTheme.titleMedium),
        const Row(),
        const SizedBox(height: 10),
        Text('Category', style: Theme.of(context).textTheme.titleSmall),
        const Row(),
        const SizedBox(height: 10),
        Text('Category', style: Theme.of(context).textTheme.titleMedium),
        const Row(),
        const SizedBox(height: 10),
      ],
    );
  }
}
