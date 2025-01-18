// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilyImpl _$$FamilyImplFromJson(Map<String, dynamic> json) => _$FamilyImpl(
      image: json['image'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      relation: json['relation'] as String?,
    );

Map<String, dynamic> _$$FamilyImplToJson(_$FamilyImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'gender': instance.gender,
      'dob': instance.dob,
      'weight': instance.weight,
      'relation': instance.relation,
    };
