// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginFormEntity {
  ValidatorField<int> get userId => throw _privateConstructorUsedError;
  ValidatorField<String> get password => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormEntityCopyWith<LoginFormEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormEntityCopyWith<$Res> {
  factory $LoginFormEntityCopyWith(
          LoginFormEntity value, $Res Function(LoginFormEntity) then) =
      _$LoginFormEntityCopyWithImpl<$Res, LoginFormEntity>;
  @useResult
  $Res call(
      {ValidatorField<int> userId,
      ValidatorField<String> password,
      String? fcmToken});

  $ValidatorFieldCopyWith<int, $Res> get userId;
  $ValidatorFieldCopyWith<String, $Res> get password;
}

/// @nodoc
class _$LoginFormEntityCopyWithImpl<$Res, $Val extends LoginFormEntity>
    implements $LoginFormEntityCopyWith<$Res> {
  _$LoginFormEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? password = null,
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ValidatorField<int>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as ValidatorField<String>,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidatorFieldCopyWith<int, $Res> get userId {
    return $ValidatorFieldCopyWith<int, $Res>(_value.userId, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidatorFieldCopyWith<String, $Res> get password {
    return $ValidatorFieldCopyWith<String, $Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginFormEntityImplCopyWith<$Res>
    implements $LoginFormEntityCopyWith<$Res> {
  factory _$$LoginFormEntityImplCopyWith(_$LoginFormEntityImpl value,
          $Res Function(_$LoginFormEntityImpl) then) =
      __$$LoginFormEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ValidatorField<int> userId,
      ValidatorField<String> password,
      String? fcmToken});

  @override
  $ValidatorFieldCopyWith<int, $Res> get userId;
  @override
  $ValidatorFieldCopyWith<String, $Res> get password;
}

/// @nodoc
class __$$LoginFormEntityImplCopyWithImpl<$Res>
    extends _$LoginFormEntityCopyWithImpl<$Res, _$LoginFormEntityImpl>
    implements _$$LoginFormEntityImplCopyWith<$Res> {
  __$$LoginFormEntityImplCopyWithImpl(
      _$LoginFormEntityImpl _value, $Res Function(_$LoginFormEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? password = null,
    Object? fcmToken = freezed,
  }) {
    return _then(_$LoginFormEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ValidatorField<int>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as ValidatorField<String>,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginFormEntityImpl extends _LoginFormEntity {
  const _$LoginFormEntityImpl(
      {required this.userId, required this.password, this.fcmToken})
      : super._();

  @override
  final ValidatorField<int> userId;
  @override
  final ValidatorField<String> password;
  @override
  final String? fcmToken;

  @override
  String toString() {
    return 'LoginFormEntity(userId: $userId, password: $password, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, password, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormEntityImplCopyWith<_$LoginFormEntityImpl> get copyWith =>
      __$$LoginFormEntityImplCopyWithImpl<_$LoginFormEntityImpl>(
          this, _$identity);
}

abstract class _LoginFormEntity extends LoginFormEntity {
  const factory _LoginFormEntity(
      {required final ValidatorField<int> userId,
      required final ValidatorField<String> password,
      final String? fcmToken}) = _$LoginFormEntityImpl;
  const _LoginFormEntity._() : super._();

  @override
  ValidatorField<int> get userId;
  @override
  ValidatorField<String> get password;
  @override
  String? get fcmToken;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormEntityImplCopyWith<_$LoginFormEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
