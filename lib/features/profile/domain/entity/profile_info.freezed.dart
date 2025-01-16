// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileInfo _$ProfileInfoFromJson(Map<String, dynamic> json) {
  return _ProfileInfo.fromJson(json);
}

/// @nodoc
mixin _$ProfileInfo {
  String get pfpUrl => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get bloodgroup => throw _privateConstructorUsedError;
  bool get dontKnowBloodType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileInfoCopyWith<ProfileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoCopyWith<$Res> {
  factory $ProfileInfoCopyWith(
          ProfileInfo value, $Res Function(ProfileInfo) then) =
      _$ProfileInfoCopyWithImpl<$Res, ProfileInfo>;
  @useResult
  $Res call(
      {String pfpUrl,
      String fullName,
      String? gender,
      String? dob,
      double? weight,
      String? bloodgroup,
      bool dontKnowBloodType});
}

/// @nodoc
class _$ProfileInfoCopyWithImpl<$Res, $Val extends ProfileInfo>
    implements $ProfileInfoCopyWith<$Res> {
  _$ProfileInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pfpUrl = null,
    Object? fullName = null,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? weight = freezed,
    Object? bloodgroup = freezed,
    Object? dontKnowBloodType = null,
  }) {
    return _then(_value.copyWith(
      pfpUrl: null == pfpUrl
          ? _value.pfpUrl
          : pfpUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      bloodgroup: freezed == bloodgroup
          ? _value.bloodgroup
          : bloodgroup // ignore: cast_nullable_to_non_nullable
              as String?,
      dontKnowBloodType: null == dontKnowBloodType
          ? _value.dontKnowBloodType
          : dontKnowBloodType // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileInfoImplCopyWith<$Res>
    implements $ProfileInfoCopyWith<$Res> {
  factory _$$ProfileInfoImplCopyWith(
          _$ProfileInfoImpl value, $Res Function(_$ProfileInfoImpl) then) =
      __$$ProfileInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pfpUrl,
      String fullName,
      String? gender,
      String? dob,
      double? weight,
      String? bloodgroup,
      bool dontKnowBloodType});
}

/// @nodoc
class __$$ProfileInfoImplCopyWithImpl<$Res>
    extends _$ProfileInfoCopyWithImpl<$Res, _$ProfileInfoImpl>
    implements _$$ProfileInfoImplCopyWith<$Res> {
  __$$ProfileInfoImplCopyWithImpl(
      _$ProfileInfoImpl _value, $Res Function(_$ProfileInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pfpUrl = null,
    Object? fullName = null,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? weight = freezed,
    Object? bloodgroup = freezed,
    Object? dontKnowBloodType = null,
  }) {
    return _then(_$ProfileInfoImpl(
      pfpUrl: null == pfpUrl
          ? _value.pfpUrl
          : pfpUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      bloodgroup: freezed == bloodgroup
          ? _value.bloodgroup
          : bloodgroup // ignore: cast_nullable_to_non_nullable
              as String?,
      dontKnowBloodType: null == dontKnowBloodType
          ? _value.dontKnowBloodType
          : dontKnowBloodType // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ProfileInfoImpl extends _ProfileInfo {
  const _$ProfileInfoImpl(
      {this.pfpUrl = "",
      this.fullName = "",
      this.gender,
      this.dob,
      this.weight,
      this.bloodgroup,
      this.dontKnowBloodType = false})
      : super._();

  factory _$ProfileInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileInfoImplFromJson(json);

  @override
  @JsonKey()
  final String pfpUrl;
  @override
  @JsonKey()
  final String fullName;
  @override
  final String? gender;
  @override
  final String? dob;
  @override
  final double? weight;
  @override
  final String? bloodgroup;
  @override
  @JsonKey()
  final bool dontKnowBloodType;

  @override
  String toString() {
    return 'ProfileInfo(pfpUrl: $pfpUrl, fullName: $fullName, gender: $gender, dob: $dob, weight: $weight, bloodgroup: $bloodgroup, dontKnowBloodType: $dontKnowBloodType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInfoImpl &&
            (identical(other.pfpUrl, pfpUrl) || other.pfpUrl == pfpUrl) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.bloodgroup, bloodgroup) ||
                other.bloodgroup == bloodgroup) &&
            (identical(other.dontKnowBloodType, dontKnowBloodType) ||
                other.dontKnowBloodType == dontKnowBloodType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pfpUrl, fullName, gender, dob,
      weight, bloodgroup, dontKnowBloodType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInfoImplCopyWith<_$ProfileInfoImpl> get copyWith =>
      __$$ProfileInfoImplCopyWithImpl<_$ProfileInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileInfoImplToJson(
      this,
    );
  }
}

abstract class _ProfileInfo extends ProfileInfo {
  const factory _ProfileInfo(
      {final String pfpUrl,
      final String fullName,
      final String? gender,
      final String? dob,
      final double? weight,
      final String? bloodgroup,
      final bool dontKnowBloodType}) = _$ProfileInfoImpl;
  const _ProfileInfo._() : super._();

  factory _ProfileInfo.fromJson(Map<String, dynamic> json) =
      _$ProfileInfoImpl.fromJson;

  @override
  String get pfpUrl;
  @override
  String get fullName;
  @override
  String? get gender;
  @override
  String? get dob;
  @override
  double? get weight;
  @override
  String? get bloodgroup;
  @override
  bool get dontKnowBloodType;
  @override
  @JsonKey(ignore: true)
  _$$ProfileInfoImplCopyWith<_$ProfileInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
