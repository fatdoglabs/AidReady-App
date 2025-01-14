import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/loading_button.dart';
import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
import 'package:aid_ready/features/auth/presentation/providers/email_otp_provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/styles.dart';

class RegisterButton extends ConsumerWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authProvider, (previous, next) {
      next.whenOrNull(
        error: (err, __) {
          context.snack((err as AppException).message);
        },
        data: (data) {
          if (data.email.isNotEmpty) {
            context.snack('You have logged in successfully.');
            //context.router.push(const VerifyOtpRoute());
          }
        },
      );
    });

    final form = ref.watch(emailOtpProvider);
    if (false) {
      return ActionButton.disabled(
        child: Center(
          child: Text(
            context.l10n.signUp,
            style: medium.copyWith(color: Colors.white),
          ).px(16.0),
        ),
      );
    } else {
      return ref.watch(authProvider).maybeWhen(loading: () {
        return LoadingButton.primary(
          label: Center(
            child: Text(
              context.l10n.signUp,
              style: medium.copyWith(color: Colors.white),
            ),
          ),
        );
      }, orElse: () {
        return ActionButton.primary(
          color: primary500,
          onPressed: () async {
            //ref.read(authProvider.notifier).signUp(form);
            // final status = await context.requestNotification();
            // if (status.authorizationStatus == AuthorizationStatus.authorized) {
            //   final token = await FirebaseMessaging.instance.getToken();
            //   debugPrint(token);
            //   ref
            //       .read(authProvider.notifier)
            //       .login(form.copyWith(fcmToken: token));
            // } else {
            //   ref.read(authProvider.notifier).login(form);
            // }
          },
          child: Center(
            child: Text(
              context.l10n.signUp,
              style: medium.copyWith(color: Colors.white),
            ).px(16.0),
          ),
        );
      });
    }
  }
}
