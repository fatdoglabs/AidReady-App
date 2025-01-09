import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/input_field.dart';
import 'package:aid_ready/features/auth/presentation/widgets/social_login_options.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/color.dart';
import '../../../../core/widgets/action_button.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.login,
          style: semibold.copyWith(fontSize: 16.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          33.verticalSpace,
          Text(
            context.l10n.welcomeBack,
            style: bold.copyWith(fontSize: 24.0, color: primaryDark950),
            textAlign: TextAlign.center,
          ),
          15.verticalSpace,
          Text(
            context.l10n.logInToAccount,
            style: regular.copyWith(color: primaryDark400),
            textAlign: TextAlign.center,
          ),
          50.verticalSpace,
          const SocalLoginOptions(),
          InputField(
            label: context.l10n.email,
            hint: context.l10n.enterEmail,
            onChanged: (value) {},
          ),
          16.verticalSpace,
          InputField.password(
            label: context.l10n.password,
            hint: context.l10n.enterPassword,
            onChanged: (value) {},
          ),
          4.verticalSpace,
          GestureDetector(
            onTap: () {
              context.router.push(const ForgotPasswordRoute());
            },
            child: Text(
              "${context.l10n.forgotPassword} ?",
              style: semibold.copyWith(fontSize: 12.0, color: primary500),
              textAlign: TextAlign.end,
            ).pad(4.0),
          ),
          16.verticalSpace,
          ActionButton.primary(
            onPressed: () {
              //context.router.push(const SignUpRoute());
            },
            child: Center(
              child: Text(
                context.l10n.login,
                style: medium.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
