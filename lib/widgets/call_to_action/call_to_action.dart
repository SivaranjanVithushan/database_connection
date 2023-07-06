import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 255, 110, 105),
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        textStyle: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: const Text('Join Course'),
    );
  }
}
