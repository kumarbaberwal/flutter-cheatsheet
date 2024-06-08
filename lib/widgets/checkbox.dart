import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: const Text(
          'CheckBox',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: Transform.scale(
          scale: 3,
          child: Checkbox(
            value: _value,
            activeColor: Colors.green,
            overlayColor: const WidgetStatePropertyAll(Colors.yellow),
            checkColor: Colors.black,
            // fillColor: const WidgetStatePropertyAll(Colors.yellow),
            onChanged: (bool? value) {
              setState(() {
                _value = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
