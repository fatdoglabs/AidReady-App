import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token.freezed.dart';
part 'auth_token.g.dart';

@freezed
class AuthToken with _$AuthToken {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AuthToken({
    required String accessToken,
    required String refreshToken,
    required int userId,
    @Default(false) bool isOnboardingComplete,
    @Default(false) bool isLocaleSet,
  }) = _AuthToken;

  factory AuthToken.fromJson(Map<String, Object?> json) =>
      _$AuthTokenFromJson(json);

  factory AuthToken.unauthenticated(
          {bool isOnboardingComplete = false, bool isLocaleSet = false}) =>
      AuthToken(
          userId: -1,
          accessToken: "",
          refreshToken: "",
          isLocaleSet: isLocaleSet,
          isOnboardingComplete: isOnboardingComplete);
}