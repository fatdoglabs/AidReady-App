import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/auth/domain/entity/auth_form_entity.dart';
import 'package:aid_ready/features/auth/presentation/providers/email_otp_provider.dart';
import 'package:aid_ready/features/auth/presentation/widgets/retryable_pin_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key, required this.email});

  final String email;

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
          Consumer(builder: (_, ref, __) {
            ref.listen(emailOtpProvider, (_, current) {
              current.whenOrNull(
                data: (data) {
                  if (data.otp.isNotEmpty) {
                    context.router.replace(const SetPasswordRoute());
                  }
                },
              );
            });

            return RetryablePinField(
              onRetry: () {
                try {
                  ref
                      .read(emailOtpProvider.notifier)
                      .resend(AuthFormEntity(email: email));
                  context.snack('OTP sent successfully');
                } on AppException catch (e) {
                  context.snack(e.message);
                }
              },
              onVerify: (pin) {
                ref
                    .read(emailOtpProvider.notifier)
                    .verify(AuthFormEntity(email: email, pin: pin));
              },
            );
          }),
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
