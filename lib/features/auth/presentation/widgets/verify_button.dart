import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/features/auth/presentation/providers/email_otp_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/task_button.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({super.key, this.isEnabled = false, this.onPressed});

  final bool isEnabled;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    if (!isEnabled) {
      return ActionButton.disabled(
        child: Center(
          child: Text(
            "disabled",
            style: medium.copyWith(color: Colors.white),
          ).px(16.0),
        ),
      );
    } else {
      return Consumer(
        child: Center(
          child: Text(
            context.l10n.verifyProceed,
            style: medium.copyWith(color: Colors.white),
          ),
        ),
        builder: (_, ref, child) {
          return ref.watch(emailOtpProvider).maybeWhen(
            orElse: () {
              return TaskButton(
                color: primary500,
                onPressed: onPressed,
                loading: false,
                child: child!,
              );
            },
            loading: () {
              return TaskButton(
                color: primary500,
                onPressed: onPressed,
                loading: true,
                child: child!,
              );
            },
          );
        },
      );
    }
  }
}
