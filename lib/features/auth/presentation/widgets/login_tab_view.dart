import 'dart:io';

import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/task_button.dart';
import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/styles.dart';

class LoginTabView extends StatefulWidget {
  const LoginTabView({super.key, this.gotoRegister});

  final VoidCallback? gotoRegister;

  @override
  State<LoginTabView> createState() => _LoginTabViewState();
}

class _LoginTabViewState extends State<LoginTabView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "context.l10n.authButtonText(context.l10n.login, '')",
          //style: text14PxMedium.rubik.darkGrey.lineHeight(16.59),
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
            Consumer(builder: (context, ref, _) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.all(8),
                child: TaskButton.icon(
                  onPressed: () {
                    ref.read(authProvider.notifier).googleLogin();
                  },
                  child: SvgPicture.asset(googleIcon),
                ),
              );
            }),
            Platform.isIOS
                ? Container(
                    margin: const EdgeInsets.only(left: 24.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: TaskButton.icon(
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
          color: Colors.black,
          onPressed: () async {
            final shouldGotoRegister =
                await context.router.push(const LoginRoute());
            if (shouldGotoRegister != null) {
              widget.gotoRegister?.call();
            }
          },
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(emailIcon, width: context.w(20)),
                12.horizontalSpace,
                Text(
                  "sdv",
                  // style: text14PxMedium.rubik.white.lineHeight(16.59),
                )
              ],
            ),
          ),
        ).px(16),
        24.verticalSpace,
        Text.rich(
          TextSpan(
            text: "context.l10n.termsText",
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
                text: "",
                //style: text12PxMedium.iconOrange.lineHeight(14.22),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    //context.router.push(AboutRoute(index: 2));
                  },
              ),
            ],
          ),
          textAlign: TextAlign.center,
          //style: text12PxRegular.rubik.darkGrey.lineHeight(14.22),
        ).px(16),
      ],
    );
  }
}
