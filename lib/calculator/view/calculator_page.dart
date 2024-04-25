import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exploration/calculator/bloc/calculator_cubit.dart';
import 'package:flutter_exploration/calculator/view/calculator_view.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CalculatorCubit>(
      create: (_) => CalculatorCubit(),
      child: const CalculatorView(),
    );
  }
}
