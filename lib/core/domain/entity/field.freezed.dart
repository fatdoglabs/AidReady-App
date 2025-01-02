// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValidatorField<T> {
  T get value => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isTouched => throw _privateConstructorUsedError;
  bool get obscureText => throw _privateConstructorUsedError;
  bool get isDisabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidatorFieldCopyWith<T, ValidatorField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidatorFieldCopyWith<T, $Res> {
  factory $ValidatorFieldCopyWith(
          ValidatorField<T> value, $Res Function(ValidatorField<T>) then) =
      _$ValidatorFieldCopyWithImpl<T, $Res, ValidatorField<T>>;
  @useResult
  $Res call(
      {T value,
      String? errorMessage,
      bool isValid,
      bool isTouched,
      bool obscureText,
      bool isDisabled});
}

/// @nodoc
class _$ValidatorFieldCopyWithImpl<T, $Res, $Val extends ValidatorField<T>>
    implements $ValidatorFieldCopyWith<T, $Res> {
  _$ValidatorFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? errorMessage = freezed,
    Object? isValid = null,
    Object? isTouched = null,
    Object? obscureText = null,
    Object? isDisabled = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isTouched: null == isTouched
          ? _value.isTouched
          : isTouched // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisabled: null == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidatorFieldImplCopyWith<T, $Res>
    implements $ValidatorFieldCopyWith<T, $Res> {
  factory _$$ValidatorFieldImplCopyWith(_$ValidatorFieldImpl<T> value,
          $Res Function(_$ValidatorFieldImpl<T>) then) =
      __$$ValidatorFieldImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {T value,
      String? errorMessage,
      bool isValid,
      bool isTouched,
      bool obscureText,
      bool isDisabled});
}

/// @nodoc
class __$$ValidatorFieldImplCopyWithImpl<T, $Res>
    extends _$ValidatorFieldCopyWithImpl<T, $Res, _$ValidatorFieldImpl<T>>
    implements _$$ValidatorFieldImplCopyWith<T, $Res> {
  __$$ValidatorFieldImplCopyWithImpl(_$ValidatorFieldImpl<T> _value,
      $Res Function(_$ValidatorFieldImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? errorMessage = freezed,
    Object? isValid = null,
    Object? isTouched = null,
    Object? obscureText = null,
    Object? isDisabled = null,
  }) {
    return _then(_$ValidatorFieldImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isTouched: null == isTouched
          ? _value.isTouched
          : isTouched // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisabled: null == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ValidatorFieldImpl<T> implements _ValidatorField<T> {
  const _$ValidatorFieldImpl(
      {required this.value,
      this.errorMessage,
      this.isValid = false,
      this.isTouched = false,
      this.obscureText = false,
      this.isDisabled = false});

  @override
  final T value;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool isTouched;
  @override
  @JsonKey()
  final bool obscureText;
  @override
  @JsonKey()
  final bool isDisabled;

  @override
  String toString() {
    return 'ValidatorField<$T>(value: $value, errorMessage: $errorMessage, isValid: $isValid, isTouched: $isTouched, obscureText: $obscureText, isDisabled: $isDisabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidatorFieldImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isTouched, isTouched) ||
                other.isTouched == isTouched) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      errorMessage,
      isValid,
      isTouched,
      obscureText,
      isDisabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidatorFieldImplCopyWith<T, _$ValidatorFieldImpl<T>> get copyWith =>
      __$$ValidatorFieldImplCopyWithImpl<T, _$ValidatorFieldImpl<T>>(
          this, _$identity);
}

abstract class _ValidatorField<T> implements ValidatorField<T> {
  const factory _ValidatorField(
      {required final T value,
      final String? errorMessage,
      final bool isValid,
      final bool isTouched,
      final bool obscureText,
      final bool isDisabled}) = _$ValidatorFieldImpl<T>;

  @override
  T get value;
  @override
  String? get errorMessage;
  @override
  bool get isValid;
  @override
  bool get isTouched;
  @override
  bool get obscureText;
  @override
  bool get isDisabled;
  @override
  @JsonKey(ignore: true)
  _$$ValidatorFieldImplCopyWith<T, _$ValidatorFieldImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
