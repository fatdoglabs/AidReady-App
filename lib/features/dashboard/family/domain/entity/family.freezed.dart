// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Family _$FamilyFromJson(Map<String, dynamic> json) {
  return _Family.fromJson(json);
}

/// @nodoc
mixin _$Family {
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get relation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilyCopyWith<Family> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyCopyWith<$Res> {
  factory $FamilyCopyWith(Family value, $Res Function(Family) then) =
      _$FamilyCopyWithImpl<$Res, Family>;
  @useResult
  $Res call(
      {String? image,
      String? name,
      String? gender,
      String? dob,
      double? weight,
      String? relation});
}

/// @nodoc
class _$FamilyCopyWithImpl<$Res, $Val extends Family>
    implements $FamilyCopyWith<$Res> {
  _$FamilyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? weight = freezed,
    Object? relation = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FamilyImplCopyWith<$Res> implements $FamilyCopyWith<$Res> {
  factory _$$FamilyImplCopyWith(
          _$FamilyImpl value, $Res Function(_$FamilyImpl) then) =
      __$$FamilyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? image,
      String? name,
      String? gender,
      String? dob,
      double? weight,
      String? relation});
}

/// @nodoc
class __$$FamilyImplCopyWithImpl<$Res>
    extends _$FamilyCopyWithImpl<$Res, _$FamilyImpl>
    implements _$$FamilyImplCopyWith<$Res> {
  __$$FamilyImplCopyWithImpl(
      _$FamilyImpl _value, $Res Function(_$FamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? weight = freezed,
    Object? relation = freezed,
  }) {
    return _then(_$FamilyImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$FamilyImpl extends _Family {
  const _$FamilyImpl(
      {this.image,
      this.name,
      this.gender,
      this.dob,
      this.weight,
      this.relation})
      : super._();

  factory _$FamilyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilyImplFromJson(json);

  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? gender;
  @override
  final String? dob;
  @override
  final double? weight;
  @override
  final String? relation;

  @override
  String toString() {
    return 'Family(image: $image, name: $name, gender: $gender, dob: $dob, weight: $weight, relation: $relation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilyImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.relation, relation) ||
                other.relation == relation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, name, gender, dob, weight, relation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilyImplCopyWith<_$FamilyImpl> get copyWith =>
      __$$FamilyImplCopyWithImpl<_$FamilyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilyImplToJson(
      this,
    );
  }
}

abstract class _Family extends Family {
  const factory _Family(
      {final String? image,
      final String? name,
      final String? gender,
      final String? dob,
      final double? weight,
      final String? relation}) = _$FamilyImpl;
  const _Family._() : super._();

  factory _Family.fromJson(Map<String, dynamic> json) = _$FamilyImpl.fromJson;

  @override
  String? get image;
  @override
  String? get name;
  @override
  String? get gender;
  @override
  String? get dob;
  @override
  double? get weight;
  @override
  String? get relation;
  @override
  @JsonKey(ignore: true)
  _$$FamilyImplCopyWith<_$FamilyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
