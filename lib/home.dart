import 'package:flutter/material.dart';
import 'animate.dart'; // Import the AnimationDemo widget from a separate file

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: AnimationDemo(),
      ),
    );
  }
}
