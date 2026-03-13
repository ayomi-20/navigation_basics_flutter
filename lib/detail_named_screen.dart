import 'package:flutter/material.dart';

class DetailNamedScreen extends StatelessWidget {
  const DetailNamedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Screen")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/settings');
          },
          child: const Text("Go To Settings"),
        ),
      ),
    );
  }
}