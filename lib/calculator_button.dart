import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final dynamic inputButton;
  // final Function btnFunction;
  const CalculatorButton({super.key, required this.inputButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // btnFunction;
      },
      child: Text('$inputButton'),
    );
  }
}
