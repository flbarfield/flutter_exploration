import 'package:flutter/material.dart';
import 'package:flutter_exploration/calculator_button.dart';

import 'calculator_screen.dart';

class CalculatorFace extends StatelessWidget {
  const CalculatorFace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[300],
      width: 300,
      height: 340,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CalculatorScreen(),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  child: const Row(
                    children: [
                      CalculatorButton(
                        inputButton: 1,
                      ),
                      SizedBox(width: 10),
                      CalculatorButton(
                        inputButton: 2,
                      ),
                      SizedBox(width: 10),
                      CalculatorButton(
                        inputButton: 3,
                      ),
                      SizedBox(width: 10),
                      CalculatorButton(
                        inputButton: 4,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Row(
                    children: [
                      CalculatorButton(
                        inputButton: 5,
                      ),
                      SizedBox(width: 10),
                      CalculatorButton(
                        inputButton: 6,
                      ),
                      SizedBox(width: 10),
                      CalculatorButton(
                        inputButton: 7,
                      ),
                      SizedBox(width: 10),
                      CalculatorButton(
                        inputButton: 8,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const CalculatorButton(
                    inputButton: 9,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const Row(
                    children: [
                      CalculatorButton(
                        inputButton: '+',
                      ),
                      SizedBox(width: 10),
                      CalculatorButton(
                        inputButton: '-',
                      ),
                      SizedBox(width: 10),
                      CalculatorButton(
                        inputButton: '/',
                      ),
                      SizedBox(width: 10),
                      CalculatorButton(
                        inputButton: 'x',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const CalculatorButton(inputButton: '='),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
