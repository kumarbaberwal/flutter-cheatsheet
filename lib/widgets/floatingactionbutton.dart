import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  State<FloatingActionButtonWidget> createState() =>
      _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState
    extends State<FloatingActionButtonWidget> {
  int value = 0;
  void increament() {
    setState(() {
      value++;
    });
  }

  void decreament() {
    setState(() {
      value--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'Floating Action Button',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You Clicked The Floating Action Button',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              '$value',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.green.shade300,
                  onPressed: () {
                    decreament();
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 50,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green.shade300,
                  onPressed: () {
                    increament();
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
