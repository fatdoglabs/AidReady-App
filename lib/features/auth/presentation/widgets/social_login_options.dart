import 'dart:io';

import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/task_button.dart';
import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class SocalLoginOptions extends StatelessWidget {
  const SocalLoginOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: fbBackgroundColor,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const [
              BoxShadow(
                color: primaryDark50,
                blurRadius: 20.0,
                spreadRadius: 0.0,
                offset: Offset.zero,
              ),
            ],
          ),
          padding: const EdgeInsets.all(8),
          child: TaskButton.icon(
            child: SvgPicture.asset(
              facebookIcon,
            ),
          ),
        ),
        64.horizontalSpace,
        Consumer(builder: (context, ref, _) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: const [
                BoxShadow(
                  color: primaryDark50,
                  blurRadius: 20.0,
                  spreadRadius: 0.0,
                  offset: Offset.zero,
                )
              ],
            ),
            padding: const EdgeInsets.all(8),
            child: TaskButton.icon(
              onPressed: () {
                ref.read(authProvider.notifier).
                googleLogin();
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
    );
  }
}
