import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/domain/entity/field.dart';
import '../../../../core/mixins/validation_mixin.dart';
import '../../domain/entity/auth_form_entity.dart';

part 'register_form_provider.g.dart';

@riverpod
class RegisterFormNotifier extends _$RegisterFormNotifier with ValidationMixin {
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
}
