// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileInfoImpl _$$ProfileInfoImplFromJson(Map<String, dynamic> json) =>
    _$ProfileInfoImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      lastDonatedDate: json['last_donated_date'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      bloodGroup: json['blood_group'] as String?,
      dontKnowBloodType: json['dont_know_blood_type'] as bool?,
    );

Map<String, dynamic> _$$ProfileInfoImplToJson(_$ProfileInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'gender': instance.gender,
      'dob': instance.dob,
      'last_donated_date': instance.lastDonatedDate,
      'weight': instance.weight,
      'blood_group': instance.bloodGroup,
      'dont_know_blood_type': instance.dontKnowBloodType,
    };
