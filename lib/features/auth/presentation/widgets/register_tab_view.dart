import 'dart:io';

import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/task_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/styles.dart';

class RegisterTabView extends StatefulWidget {
  const RegisterTabView({super.key, this.gotoLogin});

  final VoidCallback? gotoLogin;

  @override
  State<RegisterTabView> createState() => _RegisterTabViewState();
}

class _RegisterTabViewState extends State<RegisterTabView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "context.l10n.authButtonText(context.l10n.signUp, '')",
         // style: text14PxMedium.rubik.darkGrey.lineHeight(16.59),
        ),
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.all(8),
              child: TaskButton.icon(
                child: SvgPicture.asset(
                  facebookIcon,
                ),
              ),
            ),
            24.horizontalSpace,
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.all(8),
              child: TaskButton.icon(
                onPressed: () {},
                child: SvgPicture.asset(googleIcon),
              ),
            ),
            Platform.isIOS
                ? Container(
                    margin: const EdgeInsets.only(left: 24.0),
                    child: TaskButton.icon(
                      color: Colors.black,
                      child: SvgPicture.asset(appleIcon),
                    ),
                  )
                : const SizedBox.shrink()
          ],
        ),
        const Divider(
          height: 64,
          thickness: 1,
          indent: 16,
          color: Colors.black,
          endIndent: 16,
        ),
        ActionButton.primary(
          color: Colors.black
          ,
          onPressed: () async {
            final shouldGotoLogin =
                await context.router.push(const RegisterRoute());
            if (shouldGotoLogin != null) {
              widget.gotoLogin?.call();
            }
          },
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(emailIcon, width: context.w(20)),
                12.horizontalSpace,
                Text(
                  "",
                //  style: text14PxMedium.rubik.white.lineHeight(16.59),
                )
              ],
            ),
          ),
        ).px(16),
        24.verticalSpace,
        Text.rich(
          TextSpan(
            text: "",
            children: [
              TextSpan(
                text: "context.l10n.termsConditions",
               // style: text12PxMedium.iconOrange.lineHeight(14.22),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    //context.router.push(AboutRoute(index: 1));
                  },
              ),
              //TextSpan(text: ' ${context.l10n.and}\n'),
              TextSpan(
                text: "context.l10n.privacyPolicy",
                //style: text12PxMedium.iconOrange.lineHeight(14.22),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    //context.router.push(AboutRoute(index: 2));
                  },
              ),
            ],
          ),
          textAlign: TextAlign.center,
         // style: text12PxRegular.rubik.darkGrey.lineHeight(14.22),
        ).px(16),
      ],
    );
  }
}
