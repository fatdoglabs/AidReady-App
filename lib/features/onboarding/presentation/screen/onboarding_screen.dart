import 'package:aid_ready/features/language/data/model/onboarding_item.dart';
import 'package:aid_ready/features/onboarding/presentation/widgets/onboarding_pageview.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      OnboardingItem(
          title: "title",
          description:
              "description sdcvdsvf dsvcssdcsdcsdcds sdcsdcvsdc sdcvsdvsdvsdf sdcsdcvsdvsdfvds svcsdvfcdscsd sdcvsdvdfs s s s s s s s ss s s s s s s s s s s  sd d d d d d d d d d dd d  d d d d d d d"),
      OnboardingItem(title: "title", description: "description"),
      OnboardingItem(title: "title", description: "description"),
      OnboardingItem(title: "title", description: "description"),
    ];
    return Scaffold(
      body: OnboardingPageView(data: data),
    );
  }
}
