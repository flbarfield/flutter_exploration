import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exploration/custom_app_bar.dart';
import 'package:flutter_exploration/timer/bloc/timer_cubit.dart';
import 'package:flutter_exploration/timer/view/play_restart_button.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(inputTitle: 'Timer'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '00:00',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 30,
            ),
            // PlayRestartButton(),
            // {context.read<TimerCubit>().displayControlButtons()},
          ],
        ),
      ),
    );
  }
}
