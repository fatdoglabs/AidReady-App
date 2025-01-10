import 'package:aid_ready/core/mixins/validation_mixin.dart';
import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/task_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/action_button.dart';
import '../../../../core/widgets/input_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> with ValidationMixin {
  bool isValid = false;
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InputField(
          label: context.l10n.email.mandatory(),
          hint: context.l10n.enterEmail,
          onChanged: (value) {
            setState(() {
              email = value;
              isValid = validateEmail(email) && validatePassword(password);
            });
          },
        ),
        16.verticalSpace,
        InputField.password(
          label: context.l10n.password.mandatory(),
          hint: context.l10n.enterPassword,
          onChanged: (value) {
            setState(() {
              password = value;
              isValid = validateEmail(email) && validatePassword(password);
            });
          },
        ),
        4.verticalSpace,
        GestureDetector(
          onTap: () {
            context.router.push(const ForgotPasswordRoute());
          },
          child: Text(
            "${context.l10n.forgotPassword} ?",
            style: semibold.copyWith(fontSize: 12.0, color: primary500),
            textAlign: TextAlign.end,
          ).pad(4.0),
        ),
        16.verticalSpace,
        isValid
            ? TaskButton(
                color: primary500,
                onPressed: () {
                  //context.router.push(const SignUpRoute());
                },
                child: Center(
                  child: Text(
                    context.l10n.login,
                    style: medium.copyWith(color: Colors.white),
                  ),
                ),
              )
            : ActionButton.disabled(
                color: primary400,
                child: Center(
                  child: Text(
                    context.l10n.signIn,
                    style: medium.copyWith(color: Colors.white),
                  ),
                ),
              ),
      ],
    );
  }
}
