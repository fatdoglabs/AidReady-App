import 'dart:io';

import 'package:aid_ready/core/domain/entity/field.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_entity.freezed.dart';

@freezed
class LoginFormEntity with _$LoginFormEntity {
  const factory LoginFormEntity({
    required ValidatorField<int> userId,
    required ValidatorField<String> password,
    String? fcmToken,
  }) = _LoginFormEntity;

  const LoginFormEntity._();

  factory LoginFormEntity.empty() => LoginFormEntity(
        userId: const ValidatorField<int>(value: -1),
        password: const ValidatorField<String>(value: ''),
      );

  bool get isValid {
    return password.isValid;
  }

  Future<Map<String, dynamic>> toJson() async => {
        'user_id': userId.value,
        'password': password.value,
        'fcm_token': fcmToken
      };
}
