import 'package:flutter/material.dart';

class CalculatorFace extends StatefulWidget {
  const CalculatorFace({super.key});

  @override
  State<CalculatorFace> createState() => _CalculatorFaceState();
}

class _CalculatorFaceState extends State<CalculatorFace> {
  String _userInput = '';
  String _userOperator = '';

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
                    userInput: _userInput,
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
                                  _userInput = '$_userInput$i';
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
                                  _userInput = '$_userInput$i';
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
                            _userInput = '${_userInput}9';
                          });
                        },
                        child: const Text('9'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _userInput = '${_userInput}0';
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
                          _userInput = '+';
                        },
                        child: const Text('+'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('-'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('/'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
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
                        onPressed: () {},
                        child: const Text('='),
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _userInput = '';
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
