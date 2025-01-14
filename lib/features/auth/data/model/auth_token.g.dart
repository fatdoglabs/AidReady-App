// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthTokenImpl _$$AuthTokenImplFromJson(Map<String, dynamic> json) =>
    _$AuthTokenImpl(
      accessToken: json['access_token'] as String? ?? "",
      refreshToken: json['refresh_token'] as String? ?? "",
      email: json['email'] as String,
      isOnboardingComplete: json['is_onboarding_complete'] as bool? ?? false,
      isLocaleSet: json['is_locale_set'] as bool? ?? false,
    );

Map<String, dynamic> _$$AuthTokenImplToJson(_$AuthTokenImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'email': instance.email,
      'is_onboarding_complete': instance.isOnboardingComplete,
      'is_locale_set': instance.isLocaleSet,
    };
