// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_form_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFormEntity {
  String get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFormEntityCopyWith<AuthFormEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormEntityCopyWith<$Res> {
  factory $AuthFormEntityCopyWith(
          AuthFormEntity value, $Res Function(AuthFormEntity) then) =
      _$AuthFormEntityCopyWithImpl<$Res, AuthFormEntity>;
  @useResult
  $Res call(
      {String email,
      String? password,
      String? pin,
      String? fcmToken,
      String? deviceId,
      String? platform});
}

/// @nodoc
class _$AuthFormEntityCopyWithImpl<$Res, $Val extends AuthFormEntity>
    implements $AuthFormEntityCopyWith<$Res> {
  _$AuthFormEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = freezed,
    Object? pin = freezed,
    Object? fcmToken = freezed,
    Object? deviceId = freezed,
    Object? platform = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthFormEntityImplCopyWith<$Res>
    implements $AuthFormEntityCopyWith<$Res> {
  factory _$$AuthFormEntityImplCopyWith(_$AuthFormEntityImpl value,
          $Res Function(_$AuthFormEntityImpl) then) =
      __$$AuthFormEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String? password,
      String? pin,
      String? fcmToken,
      String? deviceId,
      String? platform});
}

/// @nodoc
class __$$AuthFormEntityImplCopyWithImpl<$Res>
    extends _$AuthFormEntityCopyWithImpl<$Res, _$AuthFormEntityImpl>
    implements _$$AuthFormEntityImplCopyWith<$Res> {
  __$$AuthFormEntityImplCopyWithImpl(
      _$AuthFormEntityImpl _value, $Res Function(_$AuthFormEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = freezed,
    Object? pin = freezed,
    Object? fcmToken = freezed,
    Object? deviceId = freezed,
    Object? platform = freezed,
  }) {
    return _then(_$AuthFormEntityImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFormEntityImpl extends _AuthFormEntity {
  const _$AuthFormEntityImpl(
      {required this.email,
      this.password,
      this.pin,
      this.fcmToken,
      this.deviceId,
      this.platform})
      : super._();

  @override
  final String email;
  @override
  final String? password;
  @override
  final String? pin;
  @override
  final String? fcmToken;
  @override
  final String? deviceId;
  @override
  final String? platform;

  @override
  String toString() {
    return 'AuthFormEntity(email: $email, password: $password, pin: $pin, fcmToken: $fcmToken, deviceId: $deviceId, platform: $platform)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFormEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, pin, fcmToken, deviceId, platform);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFormEntityImplCopyWith<_$AuthFormEntityImpl> get copyWith =>
      __$$AuthFormEntityImplCopyWithImpl<_$AuthFormEntityImpl>(
          this, _$identity);
}

abstract class _AuthFormEntity extends AuthFormEntity {
  const factory _AuthFormEntity(
      {required final String email,
      final String? password,
      final String? pin,
      final String? fcmToken,
      final String? deviceId,
      final String? platform}) = _$AuthFormEntityImpl;
  const _AuthFormEntity._() : super._();

  @override
  String get email;
  @override
  String? get password;
  @override
  String? get pin;
  @override
  String? get fcmToken;
  @override
  String? get deviceId;
  @override
  String? get platform;
  @override
  @JsonKey(ignore: true)
  _$$AuthFormEntityImplCopyWith<_$AuthFormEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
