import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/auth/presentation/widgets/reset_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/input_field.dart';

class ForgetForm extends StatefulWidget {
  const ForgetForm({super.key, this.onReset});

  final Function(String)? onReset;

  @override
  State<ForgetForm> createState() => _ForgetFormState();
}

class _ForgetFormState extends State<ForgetForm> {
  String email = "";
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
        ResetButton(
          isEnabled: email.isNotEmpty,
          onPressed: () {
            widget.onReset?.call(email);
          },
        ),
      ],
    );
  }
}
