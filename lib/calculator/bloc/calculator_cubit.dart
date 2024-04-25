import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'calculator_cubit.freezed.dart';
part 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(const CalculatorState());

  String addNums() {
    num total = (int.parse(state.numInput1) + int.parse(state.numInput2));
    return total.toString();
  }

  String multiplyNums() {
    num total = (int.parse(state.numInput1) * int.parse(state.numInput2));
    return total.toString();
  }

  String divideNums() {
    num total = (int.parse(state.numInput1) / int.parse(state.numInput2));
    return total.toString();
  }

  String subtractNums() {
    num total = (int.parse(state.numInput1) - int.parse(state.numInput2));
    return total.toString();
  }

  String calculateEquation() {
    if (state.numInput1.isNotEmpty && state.numInput2.isNotEmpty) {
      switch (state.currentOperator) {
        case '*':
          return multiplyNums();

        case '/':
          return divideNums();

        case '-':
          return subtractNums();

        case '+':
          return addNums();

        default:
          return '';
      }
    }

    if (state.numInput1.isNotEmpty && state.numInput2.isEmpty) {
      return state.numInput1.toString();
    }

    return '';
  }

  void insertOperator(inputOperator) {
    emit(state.copyWith(currentOperator: inputOperator));
  }

  void setInputs(String keyPressed) {
    if (keyPressed == 'CLEAR') {
      emit(state.copyWith(
        currentOperator: '',
        numInput1: '',
        numInput2: '',
        userScreenInput: '',
      ));
      return;
    }

    // if an = is pressed, evalutate num 1 and num 2
    if (keyPressed == '=') {
      emit(state.copyWith(
        userScreenInput: calculateEquation(),
        numInput1: calculateEquation(),
        numInput2: '',
      ));
      return;
    }

    // if num 1 is null, set num1 with first number set
    if (state.currentOperator.isEmpty) {
      final setNumInput1 = '${state.numInput1}$keyPressed';

      emit(state.copyWith(
        numInput1: setNumInput1,
        userScreenInput: setNumInput1,
      ));

      return;
    }

    if (state.currentOperator.isNotEmpty) {
      final setNumInput2 = '${state.numInput2}$keyPressed';

      emit(state.copyWith(
        numInput2: setNumInput2,
        userScreenInput: setNumInput2,
      ));

      return;
    }
  }
}
