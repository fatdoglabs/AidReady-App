import 'package:aid_ready/core/domain/entity/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_form_entity.freezed.dart';

@freezed
class AuthFormEntity with _$AuthFormEntity {
  const factory AuthFormEntity({
    required ValidatorField<String> email,
    required ValidatorField<String> password,
    String? fcmToken,
  }) = _AuthFormEntity;

  const AuthFormEntity._();

  factory AuthFormEntity.empty() => AuthFormEntity(
        email: const ValidatorField<String>(value: ""),
        password: const ValidatorField<String>(value: ''),
      );

  bool get isLoginValid {
    return email.isValid && password.isValid;
  }

  bool get isRegisterValid {
    return email.isValid;
  }

  Map<String, dynamic> toLoginJson() =>
      {'email': email.value, 'password': password.value, 'fcm_token': fcmToken};

  Map<String, dynamic> toRegisterJson() => {'email': email.value};
}
