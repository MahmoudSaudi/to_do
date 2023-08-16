import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        title: const Text(
          'ToDo',
        ),
      ),
      body: Center(
        child: Text('home'),
      ),
    );
  }
}
