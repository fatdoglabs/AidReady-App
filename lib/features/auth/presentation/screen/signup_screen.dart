import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/auth/domain/entity/auth_form_entity.dart';
import 'package:aid_ready/features/auth/presentation/providers/email_otp_provider.dart';
import 'package:aid_ready/features/auth/presentation/widgets/signup_form.dart';
import 'package:aid_ready/features/auth/presentation/widgets/social_login_options.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/exceptions/app_exception.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.signUp,
          style: semibold.copyWith(fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          33.verticalSpace,
          Text(
            context.l10n.createAccount,
            style: bold.copyWith(fontSize: 24.0, color: primaryDark950),
            textAlign: TextAlign.center,
          ),
          15.verticalSpace,
          Text(
            context.l10n.joinBloodDonationCommunity,
            style: regular.copyWith(color: primaryDark400),
            textAlign: TextAlign.center,
          ),
          30.verticalSpace,
          Text(
            context.l10n.signUpWith,
            style: medium.copyWith(color: primaryDark400),
            textAlign: TextAlign.center,
          ),
          15.verticalSpace,
          const SocalLoginOptions(),
          30.verticalSpace,
          Consumer(builder: (_, ref, __) {
            ref.listen(emailOtpProvider, (_, current) {
              current.whenOrNull(
                error: (err, __) {
                  context.snack((err as AppException).message);
                },
                data: (data) {
                  if (data.email.isNotEmpty) {
                    context.router.push(VerifyOtpRoute(email: data.email));
                  }
                },
              );
            });

            return SignUpForm(
              onSignUp: (email) {
                ref
                    .read(emailOtpProvider.notifier)
                    .signUp(AuthFormEntity(email: email));
              },
            );
          }),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Text(
              "\“ ${context.l10n.signUpMotto} \“",
              textAlign: TextAlign.center,
              style: regular.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          30.verticalSpace,
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: regular.copyWith(fontSize: 12.0, color: primaryDark810),
              children: [
                TextSpan(text: context.l10n.joinedBefore),
                TextSpan(
                    text: context.l10n.login,
                    style: regular.copyWith(color: primary500),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.router.replace(const SignInRoute());
                      }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
