import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_item.freezed.dart';
part 'onboarding_item.g.dart';

@freezed
class OnboardingItem with _$OnboardingItem {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OnboardingItem({
    String? image,
    required String title,
    required String description,
  }) = _OnboardingItem;

  factory OnboardingItem.fromJson(Map<String, Object?> json) =>
      _$OnboardingItemFromJson(json);
}