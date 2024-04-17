import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final dynamic inputButton;
  const CalculatorButton({super.key, required this.inputButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text('$inputButton'));
  }
}
