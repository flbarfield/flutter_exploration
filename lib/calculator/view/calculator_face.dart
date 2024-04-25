import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exploration/calculator/bloc/calculator_cubit.dart';

class CalculatorFace extends StatefulWidget {
  const CalculatorFace({super.key});

  @override
  State<CalculatorFace> createState() => _CalculatorFaceState();
}

class _CalculatorFaceState extends State<CalculatorFace> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorCubit, CalculatorState>(
      builder: (context, state) {
        return Container(
          width: 300,
          height: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.deepPurple[300],
          ),
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
                      userInput: state.userScreenInput,
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
                                  context
                                      .read<CalculatorCubit>()
                                      .setInputs('$i');
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
                                  context
                                      .read<CalculatorCubit>()
                                      .setInputs('$i');
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
                            context.read<CalculatorCubit>().setInputs('9');
                          },
                          child: const Text('9'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            context.read<CalculatorCubit>().setInputs('0');
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
                            context.read<CalculatorCubit>().insertOperator('+');
                          },
                          child: const Text('+'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            context.read<CalculatorCubit>().insertOperator('-');
                          },
                          child: const Text('-'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            context.read<CalculatorCubit>().insertOperator('/');
                          },
                          child: const Text('/'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            context.read<CalculatorCubit>().insertOperator('*');
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
                            context.read<CalculatorCubit>().setInputs('=');
                          },
                          child: const Text('='),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            context.read<CalculatorCubit>().setInputs('CLEAR');
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
      },
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
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
