import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/onboarding/domain/providers/next_page_provider.dart';
import 'package:aid_ready/features/profile/presentation/widgets/medical_info_view.dart';
import 'package:aid_ready/features/profile/presentation/widgets/personal_info_view.dart';
import 'package:aid_ready/features/profile/presentation/widgets/physical_info_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/providers/profile_update_provider.dart';

class ProfileStepsPageView extends ConsumerStatefulWidget {
  const ProfileStepsPageView({
    super.key,
    required this.initialPage,
  });

  final int initialPage;

  @override
  ConsumerState<ProfileStepsPageView> createState() =>
      _ProfileStepsPageViewState();
}

class _ProfileStepsPageViewState extends ConsumerState<ProfileStepsPageView> {
  PageController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.initialPage);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(nextPageProvider, (_, current) {
      _controller?.animateToPage(current,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    });

    ref.listen(profileUpdateProvider, (_, current) {
      current.whenOrNull(
        data: (data) {
          if (data.bloodGroup.isNotNullNotEmpty ||
              data.dontKnowBloodType == true) {
            context.router.replace(const DashboardRoute());
          }
          if (data.gender.isNotNullNotEmpty &&
              data.dob.isNotNullNotEmpty &&
              data.weight != null &&
              data.weight != 0.0) {
            ref.read(nextPageProvider.notifier).update(2);
          } else if (data.image.isNotNullNotEmpty &&
              data.name.isNotNullNotEmpty) {
            ref.read(nextPageProvider.notifier).update(1);
          }
        },
      );
    });

    return PageView.builder(
      controller: _controller,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (_, index) {
        if (index == 0) {
          return const PersonalInfoView();
        }
        if (index == 1) {
          return const PhysicalInfoView();
        }
        if (index == 2) {
          return const MedicalInfoView();
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
