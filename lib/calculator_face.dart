import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorFace extends StatefulWidget {
  const CalculatorFace({super.key});

  @override
  State<CalculatorFace> createState() => _CalculatorFaceState();
}

class _CalculatorFaceState extends State<CalculatorFace> {
  String _userScreenInput = '';

  var currentOperator = '';
  String numInput1 = '';
  String numInput2 = '';

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

  String calculateEquation() {
    if (numInput1 == '') {
      return '';
    }

    if (numInput1 != '' && numInput2 == '') {
      return numInput1;
    }

    return p
        .parse('$numInput1$currentOperator$numInput2')
        .evaluate(EvaluationType.REAL, cm)
        .toString();
  }

  void setInputs(String keyPressed) {
    if (keyPressed == 'CLEAR') {
      numInput1 = '';
      numInput2 = '';
      currentOperator = '';
      setState(() {
        _userScreenInput = '';
      });
      return;
    }

    // if num 1 is null, set num1 with first number set
    if (currentOperator.isEmpty) {
      numInput1 = '$numInput1$keyPressed';
      setState(() {
        _userScreenInput = numInput1;
      });
    }

    // if an = is pressed, evalutate num 1 and num 2
    if (keyPressed == '=') {
      setState(() {
        _userScreenInput = calculateEquation();
      });
      numInput1 = _userScreenInput;
      numInput2 = '';
      return;
    }

    // if an operator is pressed again while both nums have values, evaluate and assign to num 1,
    // if (currentOperator != '' &&
    //     calculatorOperators.containsKey(keyPressed) == true &&
    //     numInput2 != '' &&
    //     numInput1 != '') {
    //   setState(() {
    //     _userScreenInput = calculateEquation();
    //   });
    //   numInput1 = _userScreenInput;
    //   numInput2 = '';
    //   print(calculatorOperators.containsKey(keyPressed));
    // }

    // if an operator is pressed and num 1 is present, next set of nums will be num2
    if (currentOperator.isNotEmpty) {
      numInput2 = '$numInput2$keyPressed';
      setState(() {
        _userScreenInput = numInput2;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[300],
      width: 300,
      height: 340,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                              setInputs('$i');
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
                              setInputs('$i');
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
                        setInputs('9');
                      },
                      child: const Text('9'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        setInputs('0');
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
                        currentOperator = '+';
                      },
                      child: const Text('+'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        currentOperator = '-';
                      },
                      child: const Text('-'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        currentOperator = '/';
                      },
                      child: const Text('/'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        currentOperator = '*';
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
                        setInputs('=');
                      },
                      child: const Text('='),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        setInputs('CLEAR');
                      },
                      child: const Text('CLEAR'),
                    ),
                  ),
                ],
              ),
            ],
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
