import 'package:flutter/material.dart';

class NamedDetailScreen extends StatelessWidget {
  const NamedDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final args =
        ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text(args['name'])),
      body: Center(
        child: Text(
          'Price: UGX ${args['price']}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}