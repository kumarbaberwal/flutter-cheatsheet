import 'dart:developer';

import 'package:flutter/material.dart';

class DraggableWidget extends StatelessWidget {
  const DraggableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: const Text(
          'Draggable',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: Draggable(
            feedback: Container(
              height: 300,
              width: 300,
              color: Colors.green.withOpacity(0.5),
              child: const Center(
                child: Text('Dragging'),
              ),
            ),
            childWhenDragging: Container(),
            onDragStarted: () {
              log('Dragging the Box');
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Drag',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            )),
      ),
    );
  }
}
