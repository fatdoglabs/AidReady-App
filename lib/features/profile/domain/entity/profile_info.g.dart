// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileInfoImpl _$$ProfileInfoImplFromJson(Map<String, dynamic> json) =>
    _$ProfileInfoImpl(
      pfpUrl: json['pfp_url'] as String? ?? "",
      fullName: json['full_name'] as String? ?? "",
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      bloodgroup: json['bloodgroup'] as String?,
      dontKnowBloodType: json['dont_know_blood_type'] as bool?,
    );

Map<String, dynamic> _$$ProfileInfoImplToJson(_$ProfileInfoImpl instance) =>
    <String, dynamic>{
      'pfp_url': instance.pfpUrl,
      'full_name': instance.fullName,
      'gender': instance.gender,
      'dob': instance.dob,
      'weight': instance.weight,
      'bloodgroup': instance.bloodgroup,
      'dont_know_blood_type': instance.dontKnowBloodType,
    };
