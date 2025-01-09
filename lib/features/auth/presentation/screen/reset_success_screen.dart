import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ResetSuccessScreen extends StatelessWidget {
  const ResetSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.resetSuccessful,
          style: semibold.copyWith(fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          33.verticalSpace,
          const PictureView(
            imageUri: resetSuccessImage,
          ),
          Text(
            context.l10n.resetSuccessful,
            style: bold.copyWith(fontSize: 24.0, color: primaryDark950),
            textAlign: TextAlign.center,
          ),
          15.verticalSpace,
          Text(
            context.l10n.loginNowPossible,
            style: regular.copyWith(color: primaryDark400),
            textAlign: TextAlign.center,
          ),
          15.verticalSpace,
          ActionButton.primary(
            onPressed: () {
              context.router.replace(const SignInRoute());
            },
            child: Center(
              child: Text(
                context.l10n.gotoLogin,
                style: medium.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
