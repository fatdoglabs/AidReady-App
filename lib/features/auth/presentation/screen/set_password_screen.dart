import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/input_field.dart';

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
          InputField(
            label: context.l10n.createPassword,
            hint: context.l10n.enterNewPassword,
            onChanged: (value) {},
          ),
          16.verticalSpace,
          InputField(
            label: context.l10n.confirmPassword,
            hint: context.l10n.reEnterPassword,
            onChanged: (value) {},
          ),
          30.verticalSpace,
          ActionButton.primary(
            onPressed: () {
              context.router.replace(const CompleteProfileRoute());
              // context.router.replace(const ResetSuccessRoute());
            },
            child: Center(
              child: Text(
                context.l10n.confirm,
                style: medium.copyWith(color: Colors.white),
              ),
            ),
          ),
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
