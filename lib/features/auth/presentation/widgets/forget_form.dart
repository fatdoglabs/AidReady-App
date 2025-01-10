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

class ForgetForm extends StatefulWidget {
  const ForgetForm({super.key});

  @override
  State<ForgetForm> createState() => _ForgetFormState();
}

class _ForgetFormState extends State<ForgetForm> with ValidationMixin {
  bool isValid = false;

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
              isValid = validateEmail(value);
            });
          },
        ),
        16.verticalSpace,
        RichText(
          text: TextSpan(
            style: regular.copyWith(fontSize: 12.0, color: primaryDark810),
            children: [
              TextSpan(text: context.l10n.iAgree),
              TextSpan(
                  text: context.l10n.tnc,
                  style: regular.copyWith(color: primary500)),
              TextSpan(text: context.l10n.and),
              TextSpan(
                  text: context.l10n.privacyPolicy,
                  style: regular.copyWith(color: primary500)),
            ],
          ),
        ),
        16.verticalSpace,
        isValid
            ? TaskButton(
                color: primary500,
                onPressed: () {
                  context.router.replace(const VerifyOtpRoute());
                },
                child: Center(
                  child: Text(
                    context.l10n.resetPassword,
                    style: medium.copyWith(color: Colors.white),
                  ),
                ),
              )
            : ActionButton.disabled(
                color: primary400,
                child: Center(
                  child: Text(
                    context.l10n.resetPassword,
                    style: medium.copyWith(color: Colors.white),
                  ),
                ),
              ),
      ],
    );
  }
}
