import 'dart:developer';

import 'package:flutter/material.dart';

class OutlineButton extends StatefulWidget {
  const OutlineButton({super.key});

  @override
  State<OutlineButton> createState() => _OutlineButtonState();
}

class _OutlineButtonState extends State<OutlineButton> {
  int value = 0;
  void increament() {
    setState(() {
      value++;
    });
  }

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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have clicked the Outlined Button :',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              '$value',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
                style: const ButtonStyle(
                    // iconColor: WidgetStatePropertyAll(Colors.black),
                    // iconSize: WidgetStatePropertyAll(30),
                    overlayColor: WidgetStatePropertyAll(Colors.green),
                    side: WidgetStatePropertyAll(BorderSide(
                        color: Colors.black,
                        width: 3,
                        style: BorderStyle.solid))),
                onPressed: () {
                  log('Button Pressed');
                  increament();
                },
                child: const Text(
                  'Press Me',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
