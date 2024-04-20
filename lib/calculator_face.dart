import 'package:flutter/material.dart';

class CalculatorFace extends StatefulWidget {
  const CalculatorFace({super.key});

  @override
  State<CalculatorFace> createState() => _CalculatorFaceState();
}

class _CalculatorFaceState extends State<CalculatorFace> {
  String _userScreenInput = '';

  var _currentOperator = '';
  String _numInput1 = '';
  String _numInput2 = '';

  String addNums() {
    num total = (int.parse(_numInput1) + int.parse(_numInput2));
    return total.toString();
  }

  String multiplyNums() {
    num total = (int.parse(_numInput1) * int.parse(_numInput2));
    return total.toString();
  }

  String divideNums() {
    num total = (int.parse(_numInput1) / int.parse(_numInput2));
    return total.toString();
  }

  String subtractNums() {
    num total = (int.parse(_numInput1) - int.parse(_numInput2));
    return total.toString();
  }

  String calculateEquation() {
    if (_numInput1.isNotEmpty && _numInput2.isNotEmpty) {
      switch (_currentOperator) {
        case '*':
          return multiplyNums();

        case '/':
          return divideNums();

        case '-':
          return subtractNums();

        case '+':
          return addNums();

        default:
          return '';
      }
    }

    if (_numInput1.isNotEmpty && _numInput2.isEmpty) {
      return _numInput1.toString();
    }
    return '';
  }

  void setInputs(String keyPressed) {
    if (keyPressed == 'CLEAR') {
      _numInput1 = '';
      _numInput2 = '';
      _currentOperator = '';
      setState(() {
        _userScreenInput = '';
      });
      return;
    }

    // if num 1 is null, set num1 with first number set
    if (_currentOperator.isEmpty) {
      _numInput1 = '$_numInput1$keyPressed';
      setState(() {
        _userScreenInput = _numInput1;
      });
    }

    // if an = is pressed, evalutate num 1 and num 2
    if (keyPressed == '=') {
      setState(() {
        _userScreenInput = calculateEquation();
      });
      _numInput1 = _userScreenInput;
      _numInput2 = '';
      return;
    }

    // if an operator is pressed and num 1 is present, next set of nums will be num2
    if (_currentOperator.isNotEmpty) {
      _numInput2 = '$_numInput2$keyPressed';
      setState(() {
        _userScreenInput = _numInput2;
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
                        _currentOperator = '+';
                      },
                      child: const Text('+'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        _currentOperator = '-';
                      },
                      child: const Text('-'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        _currentOperator = '/';
                      },
                      child: const Text('/'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        _currentOperator = '*';
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
