import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exploration/custom_app_bar.dart';
import 'package:flutter_exploration/timer/bloc/timer_cubit.dart';
import 'package:flutter_exploration/timer/view/play_restart_button.dart';

class TimerView extends StatelessWidget {
  TimerView({super.key});

  // final timerStream =
  //     Stream<int>.periodic(const Duration(seconds: 1), (count) => count * count)
  //         .take(5);

  // Future<Stopwatch> startStopwatch() async {
  //   final stopWatch = Stopwatch();
  //   Duration elapsed = stopWatch.elapsed;
  //   print(stopWatch.elapsedMilliseconds);
  //   await Future.delayed(const Duration(seconds: 1));
  //   assert(stopWatch.elapsed == elapsed);
  //   print(stopWatch.elapsed);
  //   return Stopwatch();
  // }

  @override
  Widget build(BuildContext context) {
    // startStopwatch();
    // timerStream.forEach(print);
    return Scaffold(
      appBar: const CustomAppBar(inputTitle: 'Timer'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<TimerCubit, TimerState>(
              builder: (context, state) {
                return Text(
                  state.currentTime,
                  style: const TextStyle(fontSize: 40),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<TimerCubit, TimerState>(
              builder: (context, state) {
                if (state.playPushed == false) {
                  return const PlayButton();
                } else {
                  return const PauseRestartButtons();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
