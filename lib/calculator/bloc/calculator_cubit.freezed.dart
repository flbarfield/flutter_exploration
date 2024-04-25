// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalculatorState {
  String get userScreenInput => throw _privateConstructorUsedError;
  String get currentOperator => throw _privateConstructorUsedError;
  String get numInput1 => throw _privateConstructorUsedError;
  String get numInput2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculatorStateCopyWith<CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorStateCopyWith<$Res> {
  factory $CalculatorStateCopyWith(
          CalculatorState value, $Res Function(CalculatorState) then) =
      _$CalculatorStateCopyWithImpl<$Res, CalculatorState>;
  @useResult
  $Res call(
      {String userScreenInput,
      String currentOperator,
      String numInput1,
      String numInput2});
}

/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res, $Val extends CalculatorState>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userScreenInput = null,
    Object? currentOperator = null,
    Object? numInput1 = null,
    Object? numInput2 = null,
  }) {
    return _then(_value.copyWith(
      userScreenInput: null == userScreenInput
          ? _value.userScreenInput
          : userScreenInput // ignore: cast_nullable_to_non_nullable
              as String,
      currentOperator: null == currentOperator
          ? _value.currentOperator
          : currentOperator // ignore: cast_nullable_to_non_nullable
              as String,
      numInput1: null == numInput1
          ? _value.numInput1
          : numInput1 // ignore: cast_nullable_to_non_nullable
              as String,
      numInput2: null == numInput2
          ? _value.numInput2
          : numInput2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorStateImplCopyWith<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  factory _$$CalculatorStateImplCopyWith(_$CalculatorStateImpl value,
          $Res Function(_$CalculatorStateImpl) then) =
      __$$CalculatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userScreenInput,
      String currentOperator,
      String numInput1,
      String numInput2});
}

/// @nodoc
class __$$CalculatorStateImplCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res, _$CalculatorStateImpl>
    implements _$$CalculatorStateImplCopyWith<$Res> {
  __$$CalculatorStateImplCopyWithImpl(
      _$CalculatorStateImpl _value, $Res Function(_$CalculatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userScreenInput = null,
    Object? currentOperator = null,
    Object? numInput1 = null,
    Object? numInput2 = null,
  }) {
    return _then(_$CalculatorStateImpl(
      userScreenInput: null == userScreenInput
          ? _value.userScreenInput
          : userScreenInput // ignore: cast_nullable_to_non_nullable
              as String,
      currentOperator: null == currentOperator
          ? _value.currentOperator
          : currentOperator // ignore: cast_nullable_to_non_nullable
              as String,
      numInput1: null == numInput1
          ? _value.numInput1
          : numInput1 // ignore: cast_nullable_to_non_nullable
              as String,
      numInput2: null == numInput2
          ? _value.numInput2
          : numInput2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CalculatorStateImpl implements _CalculatorState {
  const _$CalculatorStateImpl(
      {this.userScreenInput = '',
      this.currentOperator = '',
      this.numInput1 = '',
      this.numInput2 = ''});

  @override
  @JsonKey()
  final String userScreenInput;
  @override
  @JsonKey()
  final String currentOperator;
  @override
  @JsonKey()
  final String numInput1;
  @override
  @JsonKey()
  final String numInput2;

  @override
  String toString() {
    return 'CalculatorState(userScreenInput: $userScreenInput, currentOperator: $currentOperator, numInput1: $numInput1, numInput2: $numInput2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorStateImpl &&
            (identical(other.userScreenInput, userScreenInput) ||
                other.userScreenInput == userScreenInput) &&
            (identical(other.currentOperator, currentOperator) ||
                other.currentOperator == currentOperator) &&
            (identical(other.numInput1, numInput1) ||
                other.numInput1 == numInput1) &&
            (identical(other.numInput2, numInput2) ||
                other.numInput2 == numInput2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userScreenInput, currentOperator, numInput1, numInput2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorStateImplCopyWith<_$CalculatorStateImpl> get copyWith =>
      __$$CalculatorStateImplCopyWithImpl<_$CalculatorStateImpl>(
          this, _$identity);
}

abstract class _CalculatorState implements CalculatorState {
  const factory _CalculatorState(
      {final String userScreenInput,
      final String currentOperator,
      final String numInput1,
      final String numInput2}) = _$CalculatorStateImpl;

  @override
  String get userScreenInput;
  @override
  String get currentOperator;
  @override
  String get numInput1;
  @override
  String get numInput2;
  @override
  @JsonKey(ignore: true)
  _$$CalculatorStateImplCopyWith<_$CalculatorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
