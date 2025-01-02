import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.freezed.dart';

@freezed
class ValidatorField<T> with _$ValidatorField<T> {
  const factory ValidatorField({
    required T value,
    String? errorMessage,
    @Default(false) bool isValid,
    @Default(false) bool isTouched,
    @Default(false) bool obscureText,
    @Default(false) bool isDisabled,
  }) = _ValidatorField;

  // pure
  factory ValidatorField.pure(T value) => ValidatorField<T>(
        value: value,
      );
}