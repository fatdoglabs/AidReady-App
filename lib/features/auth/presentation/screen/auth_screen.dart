import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/assets.dart';
import '../../../../core/theme/color.dart';
import '../../../../core/widgets/picture_view.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PictureView(
              imageUri: authImage,
            ),
            20.verticalSpace,
            Text(
              'Welcome to AidReady!',
              style: bold.copyWith(color: primaryDark950, fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
            20.verticalSpace,
            Text(
              'Thank you for your willingness to make a difference. Donating blood is a life-saving act, and together, we can help those in need. Let\'s get started and become a hero!',
              style: regular.copyWith(color: primaryDark950),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 32.0),
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ActionButton.primary(
                  child: Center(
                      child: Text(
                'Sign up',
                style: medium.copyWith(color: Colors.white),
              ))),
              20.verticalSpace,
              ActionButton.secondary(
                  child: Center(
                      child: Text(
                'Sign in',
                style: medium.copyWith(color: primary500),
              )))
            ],
          ),
        )
      ],
    ).px(16.0));
  }
}
