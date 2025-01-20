import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/routes/router.gr.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      child: Scaffold(
          // body: Center(
          //   child: PictureView(
          //     imageUri: appLogo,
          //     width: context.w(640.0),
          //     height: context.h(640.0),
          //   ),
          // ),
          ),
      builder: (_, ref, child) {
        ref.listen(authProvider, (_, tokenResult) async {
          tokenResult.whenOrNull(data: (token) {
            if (token.accessToken.isNotEmpty) {
              context.router.push(const DashboardRoute());
            } else if (token.isOnboardingComplete) {
              context.router.push(const SignInRoute());
            } else {
              context.router.push(const LanguageSelectionRoute());
            }
          });
        });
        return child!;
      },
    );
  }
}
