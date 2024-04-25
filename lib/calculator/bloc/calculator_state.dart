part of 'calculator_cubit.dart';

@freezed
class CalculatorState with _$CalculatorState {
  const factory CalculatorState({
    @Default('') String userScreenInput,
    @Default('') String currentOperator,
    @Default('') String numInput1,
    @Default('') String numInput2,
  }) = _CalculatorState;
}
