import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(const TimerState());

  // final ticker = {
  //   Stream<int> tick({required int ticks}) {
  //     return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1).take(ticks);
  //   }
  // };

  void toggleControlButtons() {
    if (state.playPushed) {
      emit(state.copyWith(playPushed: false));
    } else {
      emit(state.copyWith(playPushed: true));
    }
  }

  // void ticker() {}
}
