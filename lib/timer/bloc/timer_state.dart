part of 'timer_cubit.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    @Default(0) num currentTime,
    @Default(false) bool playPushed,
  }) = _TimerState;
}
