// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingItemImpl _$$OnboardingItemImplFromJson(Map<String, dynamic> json) =>
    _$OnboardingItemImpl(
      cached: json['cached'] as bool? ?? false,
      image: json['image'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$OnboardingItemImplToJson(
        _$OnboardingItemImpl instance) =>
    <String, dynamic>{
      'cached': instance.cached,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
    };
