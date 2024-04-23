import 'package:flutter/material.dart';
import 'package:flutter_exploration/custom_app_bar.dart';
import '../calculator_face.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

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
