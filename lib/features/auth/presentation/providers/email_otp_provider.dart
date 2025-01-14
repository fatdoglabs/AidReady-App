import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/domain/entity/field.dart';
import '../../../../core/mixins/validation_mixin.dart';
import '../../domain/entity/auth_form_entity.dart';

part 'email_otp_provider.g.dart';

@riverpod
class EmailOtp extends _$EmailOtp with ValidationMixin {
  @override
  AuthFormEntity build() => AuthFormEntity.empty();

  void setEmail(String email) {
    ValidatorField<String> idField;
    if (email.trim().isNotNullNotEmpty) {
      final form = state.copyWith(email: ValidatorField(value: email));
      final bool isIdValid = validateNotEmpty(email);

      if (isIdValid) {
        idField = form.email.copyWith(value: email, isValid: true);
      } else {
        idField = form.email.copyWith(
          value: email,
          isValid: false,
        );
      }
    } else {
      idField =
          state.email.copyWith(value: '', isValid: false, errorMessage: null);
    }
    state = state.copyWith(email: idField);
  }

  void setOtp(String pin) {
    ValidatorField<String> pinField;
    if (pin.trim().isNotNullNotEmpty) {
      final form = state.copyWith(pin: ValidatorField(value: pin));
      final bool isPinValid = validatePin(pin);

      if (isPinValid) {
        pinField = form.pin.copyWith(value: pin, isValid: true);
      } else {
        pinField = form.pin.copyWith(
          value: pin,
          isValid: false,
        );
      }
    } else {
      pinField =
          state.pin.copyWith(value: '', isValid: false, errorMessage: null);
    }
    state = state.copyWith(pin: pinField);
  }
  
}
