import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token.freezed.dart';
part 'auth_token.g.dart';

@freezed
class AuthToken with _$AuthToken {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AuthToken({
    @Default("") String accessToken,
    @Default("") String refreshToken,
    required String email,
    @Default(false) bool isOnboardingComplete,
    @Default(false) bool isLocaleSet,
    @Default(false) bool isPersonalInfoCompleted,
    @Default(false) bool isPhysicalInfoCompleted,
    @Default(false) bool isMedicalInfoCompleted,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, Object?> json) =>
      _$AuthTokenFromJson(json);

  factory AuthToken.unauthenticated(
          {bool isOnboardingComplete = false, bool isLocaleSet = false}) =>
      AuthToken(
          email: "",
          accessToken: "",
          refreshToken: "",
          isLocaleSet: isLocaleSet,
          isOnboardingComplete: isOnboardingComplete);
}