import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/features/auth/presentation/widgets/retryable_pin_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.verification,
          style: semibold.copyWith(fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          33.verticalSpace,
          Text(
            context.l10n.otpVerification,
            style: bold.copyWith(fontSize: 24.0, color: primaryDark950),
            textAlign: TextAlign.center,
          ),
          15.verticalSpace,
          Text(
            context.l10n.otpMessage,
            style: regular.copyWith(color: primaryDark400),
            textAlign: TextAlign.center,
          ),
          30.verticalSpace,
          const RetryablePinField(),
          16.verticalSpace,
          ActionButton.primary(
            onPressed: () {
              context.router.replace(const SetPasswordRoute());
            },
            child: Center(
              child: Text(
                context.l10n.verifyProceed,
                style: medium.copyWith(color: Colors.white),
              ),
            ),
          ),
          16.verticalSpace,
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: regular.copyWith(fontSize: 12.0, color: primaryDark810),
              children: [
                TextSpan(text: context.l10n.didntRecieveOtp),
                TextSpan(
                    text: context.l10n.resendOtp,
                    style: semibold.copyWith(color: primary500),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.router.maybePop();
                      }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
