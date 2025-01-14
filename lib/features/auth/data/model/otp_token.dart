import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_token.freezed.dart';
part 'otp_token.g.dart';

@freezed
class OtpToken with _$OtpToken {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OtpToken({
    @Default("") String email,
    @Default("") String otp,
  }) = _OtpToken;

  factory OtpToken.fromJson(Map<String, Object?> json) =>
      _$OtpTokenFromJson(json);

  factory OtpToken.unauthenticated(
          {bool isOnboardingComplete = false, bool isLocaleSet = false}) =>
      const OtpToken(
        email: "",
        otp: "",
      );
}
