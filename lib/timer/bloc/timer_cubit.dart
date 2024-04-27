import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(const TimerState());
}
