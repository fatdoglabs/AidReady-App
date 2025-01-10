import 'package:aid_ready/core/mixins/validation_mixin.dart';
import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/task_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/input_field.dart';

class SetPasswordForm extends StatefulWidget {
  const SetPasswordForm({super.key});

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
      children: [
        InputField.password(
          label: context.l10n.createPassword,
          hint: context.l10n.enterNewPassword,
          onChanged: (value) {},
        ),
        16.verticalSpace,
        InputField.password(
          label: context.l10n.confirmPassword,
          hint: context.l10n.reEnterPassword,
          onChanged: (value) {},
        ),
        30.verticalSpace,
        true
            ? TaskButton(
                color: primary500,
                onPressed: () {
                  context.router.replace(const CompleteProfileRoute());
                  // context.router.replace(const ResetSuccessRoute());
                },
                child: Center(
                  child: Text(
                    context.l10n.confirm,
                    style: medium.copyWith(color: Colors.white),
                  ),
                ),
              )
            : ActionButton.disabled(
                color: primary400,
                child: Center(
                  child: Text(
                    context.l10n.confirm,
                    style: medium.copyWith(color: Colors.white),
                  ),
                ),
              ),
      ],
    );
  }
}
