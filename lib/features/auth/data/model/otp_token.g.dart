// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpTokenImpl _$$OtpTokenImplFromJson(Map<String, dynamic> json) =>
    _$OtpTokenImpl(
      email: json['email'] as String? ?? "",
      otp: json['otp'] as String? ?? "",
    );

Map<String, dynamic> _$$OtpTokenImplToJson(_$OtpTokenImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
    };
