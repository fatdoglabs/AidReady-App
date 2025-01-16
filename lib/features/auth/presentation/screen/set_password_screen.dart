import 'dart:io';

import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/auth/domain/entity/auth_form_entity.dart';
import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
import 'package:aid_ready/features/auth/presentation/providers/email_otp_provider.dart';
import 'package:aid_ready/features/auth/presentation/widgets/set_password_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/routes/router.gr.dart';

@RoutePage()
class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.setPassword,
          style: semibold.copyWith(fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          33.verticalSpace,
          Text(
            context.l10n.secureAccount,
            style: bold.copyWith(fontSize: 24.0, color: primaryDark950),
            textAlign: TextAlign.center,
          ),
          15.verticalSpace,
          Text(
            context.l10n.secureMessage,
            style: regular.copyWith(color: primaryDark400),
            textAlign: TextAlign.center,
          ),
          30.verticalSpace,
          Consumer(builder: (_, ref, __) {
            ref.listen(authProvider, (previous, next) {
              next.whenOrNull(
                error: (err, __) {
                  context.snack((err as AppException).message);
                },
                data: (data) {
                  if (data.accessToken.isNotEmpty) {
                    ///this check is required here since, authProvider is used in splash screen to determine which page should be shown.
                    ///Since Login Screen is one of the possible options, this check prevents the Dashboard screen from appearing unexpectedly
                    ///since we are listening to auth provider here again.
                    context.snack('You have logged in successfully.');
                    context.router.navigate(const AuthRoute());
                    context.router.push(const CompleteProfileRoute());
                  }
                },
              );
            });
            return SetPasswordForm(
              onSetPassword: (password) {
                final otpToken = ref.read(emailOtpProvider).whenOrNull(
                      data: (data) => data,
                    );
                if (otpToken != null) {
                  ref.read(authProvider.notifier).setPassword(AuthFormEntity(
                        email: otpToken.email,
                        pin: otpToken.otp,
                        password: password,
                        platform: Platform.isAndroid ? 'android' : 'ios',
                      ));
                }
              },
            );
          }),
          8.verticalSpace,
          RichText(
            text: TextSpan(
              style: regular.copyWith(fontSize: 12.0, color: primaryDark810),
              children: [
                TextSpan(
                  text: context.l10n.note,
                  style: bold.copyWith(color: primaryDark600),
                ),
                TextSpan(
                  text: ": ",
                  style: bold.copyWith(color: primaryDark600),
                ),
                TextSpan(
                    text: context.l10n.updatePasswordAnyTime,
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
