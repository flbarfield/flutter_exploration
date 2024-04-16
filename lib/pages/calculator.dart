import 'package:flutter/material.dart';
import 'package:flutter_exploration/custom_app_bar.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: const CustomAppBar(inputTitle: 'Calculator'),
      body: Center(
        child: Container(
          color: Colors.deepPurple[300],
          width: 300,
          height: 400,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Container(
                  alignment: Alignment.topCenter,
                  color: Colors.white,
                  width: 250,
                  height: 40,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'NUMBERS',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
