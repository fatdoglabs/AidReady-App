import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/auth/domain/entity/auth_form_entity.dart';
import 'package:aid_ready/features/auth/presentation/widgets/signin_form.dart';
import 'package:aid_ready/features/auth/presentation/widgets/social_login_options.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/routes/router.gr.dart';
import '../../../../core/theme/color.dart';
import '../providers/auth_provider.dart';

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
          Consumer(builder: (_, ref, __) {
            ref.listen(authProvider, (previous, next) {
              next.whenOrNull(
                error: (err, __) {
                  context.snack((err as AppException).message);
                },
                data: (data) {
                  if (data.accessToken.isNotEmpty) {
                    ///this check is required here since, authProvider is used in splash screen to determine which page should be shown.
                    ///Since Login Screen is one of the possible options, this check prevents the Dashboard screen from appearing unexpectedly
                    ///since we are listening to auth provider here again.
                    context.snack('You have logged in successfully.');
                    if (data.isMedicalInfoCompleted) {
                      //user has provided all necessary information to build a profile
                      context.router.replaceAll([const DashboardRoute()]);
                    } else {
                      int step = 0;
                      //user has yet to provide their medical information
                      if (data.isPhysicalInfoCompleted) step = 2;
                      //user has yet to provide their medical and physical information
                      if (data.isPersonalInfoCompleted) step = 1;
                      //user has yet to provide their medical, physical and personal information
                      context.router.replaceAll(
                          [CompleteProfileRoute(stepsCompleted: step)]);
                    }
                  }
                },
              );
            });
            return SignInForm(
              onLogin: (email, password) async {
                ref.read(authProvider.notifier).login(AuthFormEntity(
                      email: email,
                      password: password,
                    ));
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
            );
          }),
        ],
      ),
    );
  }
}
