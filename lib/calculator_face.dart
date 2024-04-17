import 'package:flutter/material.dart';
import 'package:flutter_exploration/calculator_button.dart';

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
                  child: Row(
                    children: [
                      for (var i = 1; i < 5; i++)
                        Row(
                          children: [
                            CalculatorButton(
                              inputButton: i,
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      for (var i = 5; i < 9; i++)
                        Row(
                          children: [
                            CalculatorButton(inputButton: i),
                            const SizedBox(width: 10),
                          ],
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

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({
    super.key,
  });

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final _userInput = '0';

  // void changeUserInput(() {
  //   userInput
  // });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 250,
      child: Center(
        child: Text(
          _userInput,
          style: const TextStyle(
            backgroundColor: Colors.white,
            height: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
