// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilyMemberImpl _$$FamilyMemberImplFromJson(Map<String, dynamic> json) =>
    _$FamilyMemberImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      relation: json['relation'] as String?,
    );

Map<String, dynamic> _$$FamilyMemberImplToJson(_$FamilyMemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'gender': instance.gender,
      'dob': instance.dob,
      'weight': instance.weight,
      'relation': instance.relation,
    };
