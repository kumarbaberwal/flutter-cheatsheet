import 'dart:developer';

import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'Outline Button',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: OutlinedButton(
          onPressed: () {
            log('Button Pressed');
          },
          child: const Text('Press Me')),
    );
  }
}
