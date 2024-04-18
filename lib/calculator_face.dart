import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorFace extends StatefulWidget {
  const CalculatorFace({super.key});

  @override
  State<CalculatorFace> createState() => _CalculatorFaceState();
}

class _CalculatorFaceState extends State<CalculatorFace> {
  String _userScreenInput = '';

  var currentInputItems = [];
  var currentOperator = '';

  final Map<String, int> calculatorDigits = {
    '1': 1,
    '2': 2,
    '3': 3,
    '4': 4,
    '5': 5,
    '6': 6,
    '7': 7,
    '8': 8,
    '9': 9,
    '0': 0
  };

  final Map<String, bool> calculatorOperators = {
    '*': true,
    '/': true,
    '+': true,
    '-': true
  };

  // for math_evaluation package
  Parser p = Parser();
  ContextModel cm = ContextModel();

  dynamic calculateEquation() {
    if (currentInputItems.isEmpty) {
      return 0;
    }
    print(p
        .parse('${currentInputItems[0]}$currentOperator${currentInputItems[1]}')
        .evaluate(EvaluationType.REAL, cm));
    return p
        .parse('${currentInputItems[0]}$currentOperator${currentInputItems[1]}')
        .evaluate(EvaluationType.REAL, cm);
  }

  void setInputs(String keyPressed) {
    //TODO:

    // if an operator is pressed and num 1 is present, next set of nums will be num2
    if (calculatorOperators.containsKey(keyPressed) &&
        currentInputItems[0] != null) {
      currentInputItems[1] = keyPressed;
    }
    // if an operator is pressed again while both nums have values, evaluate and assign to num 1,
    if (calculatorOperators.containsKey(keyPressed) &&
        currentInputItems[0] != null &&
        currentInputItems[1] != null) {
      setState(() {
        _userScreenInput = calculateEquation();
      });
      currentInputItems[0] = _userScreenInput;
    }
    // if an = is pressed, evalutate num 1 and num 2
    // if (keyPressed == '='){
    //   _userScreenInput p.parse('${numList[1] }')
    // }
    // if num 1 is null, set num1 with first number set
    // if (!numList[0]) {
    //   numList.add(keyPressed)
    // } else if (){}
  }

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
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: CalculatorScreen(
                    userInput: _userScreenInput,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 35),
                  child: Row(
                    children: [
                      for (var i = 1; i < 5; i++)
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _userScreenInput = '$_userScreenInput$i';
                                });
                              },
                              child: Text('$i'),
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
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _userScreenInput = '$_userScreenInput$i';
                                });
                              },
                              child: Text('$i'),
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
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _userScreenInput = '${_userScreenInput}9';
                          });
                        },
                        child: const Text('9'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _userScreenInput = '${_userScreenInput}0';
                          });
                        },
                        child: const Text('0'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentOperator = '+';
                          });
                        },
                        child: const Text('+'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentOperator = '-';
                          });
                        },
                        child: const Text('-'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentOperator = '/';
                          });
                        },
                        child: const Text('/'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentOperator = '*';
                          });
                        },
                        child: const Text('x'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          calculateEquation();
                        },
                        child: const Text('='),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _userScreenInput = '';
                          });
                        },
                        child: const Text('CLEAR'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  final String userInput;

  const CalculatorScreen({
    super.key,
    required this.userInput,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 250,
      child: Center(
        child: Text(
          userInput,
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
