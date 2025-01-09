import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/features/auth/presentation/widgets/social_login_options.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/input_field.dart';

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
          InputField(
            label: context.l10n.email,
            hint: context.l10n.enterEmail,
            onChanged: (value) {},
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
          ActionButton.primary(
            onPressed: () {
              //context.router.push(const SignUpRoute());
            },
            child: Center(
              child: Text(
                context.l10n.signUp,
                style: medium.copyWith(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Text(
              "\“ Every donation counts. By signing up, you’re taking the first step toward saving lives! \“",
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
                    style: regular.copyWith(color: primary500)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
