import 'dart:developer';

import 'package:flutter/material.dart';

class InkWidget extends StatelessWidget {
  const InkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: const Text(
          'Ink Widget',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: Ink(
          child: InkWell(
            onTap: () {
              // log(10);
              log("Print Pressed Me!");
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: const Center(child: Text("Press Me!")),
            ),
          ),
        ),
      ),
    );
  }
}
