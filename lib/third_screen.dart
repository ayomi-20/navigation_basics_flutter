// import 'package:flutter/material.dart';

// class ThirdScreen extends StatelessWidget {
//   const ThirdScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Go back to Second Screen
          },
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/5/5c/Murchison_Falls_Uganda.jpg',
            width: 300,
          ),
        ),
      ),
    );
  }
}