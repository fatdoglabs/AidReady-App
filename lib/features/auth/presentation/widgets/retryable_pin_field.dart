import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/features/auth/presentation/providers/email_otp_provider.dart';
import 'package:aid_ready/features/auth/presentation/widgets/resend_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../providers/auth_provider.dart';

class RetryablePinField extends ConsumerStatefulWidget {
  const RetryablePinField({
    super.key,
  });

  @override
  ConsumerState<RetryablePinField> createState() => _RetryablePinFieldState();
}

class _RetryablePinFieldState extends ConsumerState<RetryablePinField> {
  TextEditingController? controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final form = ref.watch(emailOtpProvider);
    return Column(
      children: [
        PinCodeTextField(
          controller: controller,
          scrollPadding: EdgeInsets.zero,
          useHapticFeedback: true,
          appContext: context,
          textStyle: light.copyWith(color: primaryDark950, fontSize: 40.0),
          pastedTextStyle:
              light.copyWith(color: primaryDark950, fontSize: 40.0),
          length: 4,
          obscuringCharacter: '*',
          blinkWhenObscuring: true,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            borderWidth: 2,
            inactiveColor: primaryDark300,
            selectedColor: primary500,
            activeColor: primary500,
            shape: PinCodeFieldShape.underline,
            borderRadius: BorderRadius.circular(0),
            fieldHeight: 60.0,
            fieldWidth: 60.0,
            fieldOuterPadding: EdgeInsets.zero,
          ),
          animationDuration: const Duration(milliseconds: 300),
          keyboardType: TextInputType.number,
          beforeTextPaste: (text) {
            return true;
          },
          onCompleted: (pin) {
            ref.read(emailOtpProvider.notifier).setOtp(pin);
          },
        ),
        Row(
          children: [
            Expanded(
              child: false
                  ? Text(
                      context.l10n.wrongOtpTryAgain,
                      style: regular.copyWith(color: danger600, fontSize: 12.0),
                    )
                  : const SizedBox.shrink(),
            ),
            ResendTimer(
              onRetry: () {
                try {
                  ref.read(authProvider.notifier).resend(form);
                  controller?.text = "";
                  context.snack('OTP sent successfully');
                } on AppException catch (e) {
                  context.snack(e.message);
                }
              },
            ),
          ],
        )
      ],
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
