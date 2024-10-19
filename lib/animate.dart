import 'package:flutter/material.dart';

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          width: _isExpanded ? 300 : 150,
          height: _isExpanded ? 300 : 150,
          decoration: BoxDecoration(
            color: _isExpanded ? Colors.blue : Colors.red,
            borderRadius: BorderRadius.circular(_isExpanded ? 30 : 0),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: const Text('Click Here For Animation'),
        ),
        const SizedBox(height: 40),
        const SizedBox(height: 20),
      ],
    );
  }
}
