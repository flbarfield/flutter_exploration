import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exploration/timer/view/play_restart_button.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(const TimerState());

  dynamic toggleControlButtons() {
    if (state.playPushed) {
      emit(state.copyWith(playPushed: false));
    } else {
      emit(state.copyWith(playPushed: true));
    }
  }
}
