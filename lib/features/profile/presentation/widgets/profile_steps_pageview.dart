import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/features/onboarding/domain/providers/next_page_provider.dart';
import 'package:aid_ready/features/profile/presentation/widgets/medical_info_view.dart';
import 'package:aid_ready/features/profile/presentation/widgets/personal_info_view.dart';
import 'package:aid_ready/features/profile/presentation/widgets/physical_info_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileStepsPageView extends ConsumerStatefulWidget {
  const ProfileStepsPageView({
    super.key,
  });

  @override
  ConsumerState<ProfileStepsPageView> createState() =>
      _ProfileStepsPageViewState();
}

class _ProfileStepsPageViewState extends ConsumerState<ProfileStepsPageView> {
  PageController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(nextPageProvider, (_, current) {
      _controller?.animateToPage(current,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    });
    return PageView.builder(
      controller: _controller,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (_, index) {
        if (index == 0) {
          return PersonalInfoView(
            onNext: () {
              ref.read(nextPageProvider.notifier).update(1);
            },
          );
        }
        if (index == 1) {
          return PhysicalInfoView(
            onNext: () {
              ref.read(nextPageProvider.notifier).update(2);
            },
          );
        }
        if (index == 2) {
          return MedicalInfoView(
            onNext: () {
              context.router.push(DashboardRoute());
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
