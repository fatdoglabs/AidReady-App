import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/auth/presentation/widgets/login_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/input_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key, this.onLogin});

  final Function(String, String)? onLogin;

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
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
            });
          },
        ),
        4.verticalSpace,
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              context.router.push(const ForgotPasswordRoute());
            },
            child: Text(
              "${context.l10n.forgotPassword} ?",
              style: semibold.copyWith(fontSize: 12.0, color: primary500),
              textAlign: TextAlign.end,
            ).pad(4.0),
          ),
        ),
        16.verticalSpace,
        LoginButton(
          isEnabled: password.isNotEmpty && email.isNotEmpty,
          onPressed: () {
            widget.onLogin?.call(email, password);
          },
        ),
      ],
    );
  }
}
