import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_form_entity.freezed.dart';

@freezed
class AuthFormEntity with _$AuthFormEntity {
  const factory AuthFormEntity({
    required String email,
    String? password,
    String? pin,
    String? fcmToken,
    String? deviceId,
    String? platform,
    @Default("email") String authType,
    @Default("") String providerId,
  }) = _AuthFormEntity;

  const AuthFormEntity._();

  factory AuthFormEntity.empty() => const AuthFormEntity(
        email: "",
        password: "",
        pin: "",
      );

  Map<String, dynamic> toLoginJson() => {
        'email': email,
        'password': password,
        'fcm_token': fcmToken,
      };

  Map<String, dynamic> toSocialJson() => {
        'email': email,
        'password': password,
        'fcm_token': fcmToken,
        'device_id': deviceId,
        'auth_type': authType,
        'provider_id': providerId,
        'platform': platform
      };

  Map<String, dynamic> toRegisterJson() => {
        'email': email,
      };

  Map<String, dynamic> toVerifyJson() => {
        'email': email,
        'otp': pin,
      };

  Map<String, dynamic> toSetPasswordJson() => {
        'email': email,
        'otp': pin,
        'password': password,
        'confirm_password': password,
        'platform': platform
      };
}
