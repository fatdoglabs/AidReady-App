import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/auth/presentation/providers/email_otp_provider.dart';
import 'package:aid_ready/features/auth/presentation/widgets/register_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/input_field.dart';

class SignUpForm extends ConsumerWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(emailOtpProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InputField(
          label: context.l10n.email.mandatory(),
          hint: context.l10n.enterEmail,
          onChanged: (value) {
            ref.read(emailOtpProvider.notifier).setEmail(value);
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
        const RegisterButton(),
      ],
    );
  }
}
