import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exploration/timer/bloc/timer_cubit.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerCubit, TimerState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<TimerCubit>().toggleControlButtons();
              },
              child: const Icon(Icons.play_arrow),
            ),
          ],
        );
      },
    );
  }
}

class PauseRestartButtons extends StatelessWidget {
  const PauseRestartButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerCubit, TimerState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<TimerCubit>().toggleControlButtons();
              },
              child: const Icon(Icons.pause),
            ),
            const SizedBox(
              width: 20,
            ),
            const FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.restart_alt),
            )
          ],
        );
      },
    );
  }
}
