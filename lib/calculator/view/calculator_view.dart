import 'package:flutter/material.dart';
import 'package:flutter_exploration/custom_app_bar.dart';
import 'calculator_face.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: const CustomAppBar(inputTitle: 'Calculator'),
      body: const Center(
        child: CalculatorFace(),
      ),
    );
  }
}
