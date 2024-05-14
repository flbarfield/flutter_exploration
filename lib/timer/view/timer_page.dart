import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exploration/timer/bloc/timer_cubit.dart';
import 'package:flutter_exploration/timer/view/timer_view.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TimerCubit>(
      create: (_) => TimerCubit(),
      child: TimerView(),
    );
  }
}
