import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/auth/presentation/widgets/forget_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.forgotPassword,
          style: semibold.copyWith(fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          33.verticalSpace,
          Text(
            context.l10n.forgotYourPassword,
            style: bold.copyWith(fontSize: 24.0, color: primaryDark950),
            textAlign: TextAlign.center,
          ),
          15.verticalSpace,
          Text(
            context.l10n.resetMessage,
            style: regular.copyWith(color: primaryDark400),
            textAlign: TextAlign.center,
          ),
          30.verticalSpace,
          const ForgetForm(),
          16.verticalSpace,
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: regular.copyWith(fontSize: 12.0, color: primaryDark810),
              children: [
                TextSpan(text: context.l10n.rememberedPassword),
                TextSpan(
                    text: context.l10n.loginNow,
                    style: regular.copyWith(color: primary500),
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
