// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpToken _$OtpTokenFromJson(Map<String, dynamic> json) {
  return _OtpToken.fromJson(json);
}

/// @nodoc
mixin _$OtpToken {
  String get email => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpTokenCopyWith<OtpToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpTokenCopyWith<$Res> {
  factory $OtpTokenCopyWith(OtpToken value, $Res Function(OtpToken) then) =
      _$OtpTokenCopyWithImpl<$Res, OtpToken>;
  @useResult
  $Res call({String email, String otp});
}

/// @nodoc
class _$OtpTokenCopyWithImpl<$Res, $Val extends OtpToken>
    implements $OtpTokenCopyWith<$Res> {
  _$OtpTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpTokenImplCopyWith<$Res>
    implements $OtpTokenCopyWith<$Res> {
  factory _$$OtpTokenImplCopyWith(
          _$OtpTokenImpl value, $Res Function(_$OtpTokenImpl) then) =
      __$$OtpTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String otp});
}

/// @nodoc
class __$$OtpTokenImplCopyWithImpl<$Res>
    extends _$OtpTokenCopyWithImpl<$Res, _$OtpTokenImpl>
    implements _$$OtpTokenImplCopyWith<$Res> {
  __$$OtpTokenImplCopyWithImpl(
      _$OtpTokenImpl _value, $Res Function(_$OtpTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
  }) {
    return _then(_$OtpTokenImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OtpTokenImpl implements _OtpToken {
  const _$OtpTokenImpl({this.email = "", this.otp = ""});

  factory _$OtpTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpTokenImplFromJson(json);

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String otp;

  @override
  String toString() {
    return 'OtpToken(email: $email, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpTokenImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpTokenImplCopyWith<_$OtpTokenImpl> get copyWith =>
      __$$OtpTokenImplCopyWithImpl<_$OtpTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpTokenImplToJson(
      this,
    );
  }
}

abstract class _OtpToken implements OtpToken {
  const factory _OtpToken({final String email, final String otp}) =
      _$OtpTokenImpl;

  factory _OtpToken.fromJson(Map<String, dynamic> json) =
      _$OtpTokenImpl.fromJson;

  @override
  String get email;
  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$OtpTokenImplCopyWith<_$OtpTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
