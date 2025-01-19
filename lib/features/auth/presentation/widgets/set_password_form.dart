import 'package:aid_ready/core/mixins/validation_mixin.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/auth/presentation/widgets/set_password_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/input_field.dart';

class SetPasswordForm extends StatefulWidget {
  const SetPasswordForm({super.key, this.onSetPassword});

  final Function(String)? onSetPassword;

  @override
  State<SetPasswordForm> createState() => _SetPasswordFormState();
}

class _SetPasswordFormState extends State<SetPasswordForm>
    with ValidationMixin {
  bool isValid = false;

  String password = "";
  String confimPassword = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputField.password(
          label: context.l10n.createPassword.mandatory(),
          hint: context.l10n.enterNewPassword,
          onChanged: (value) {
            setState(() {
              password = value;
            });
          },
        ),
        Container(
          margin: const EdgeInsets.only(top: 4.0, bottom: 12.0),
          child: Text(
            context.l10n.passwordRequirement,
            style: regular.copyWith(fontSize: 10.0),
          ),
        ),
        InputField.password(
          label: context.l10n.confirmPassword.mandatory(),
          hint: context.l10n.reEnterPassword,
          onChanged: (value) {
            setState(() {
              confimPassword = value;
            });
          },
        ),
        30.verticalSpace,
        SetPasswordButton(
          isEnabled: validatePassword(password) &&
              validatePassword(confimPassword) &&
              password == confimPassword,
          onPressed: () {
            widget.onSetPassword?.call(password);
          },
        )
      ],
    );
  }
}
