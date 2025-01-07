import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/features/language/data/model/onboarding_item.dart';
import 'package:aid_ready/features/onboarding/presentation/widgets/onboarding_pageview.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key, required this.items});

  final List<OnboardingItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPageView(
        data: items,
        gotoDashboard: () {
          context.router.push(const AuthRoute());
        },
      ),
    );
  }
}
