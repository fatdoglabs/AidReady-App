import 'package:aid_ready/features/profile/presentation/widgets/medical_info_view.dart';
import 'package:aid_ready/features/profile/presentation/widgets/personal_info_view.dart';
import 'package:aid_ready/features/profile/presentation/widgets/physical_info_view.dart';
import 'package:flutter/material.dart';

class ProfileStepsPageView extends StatefulWidget {
  const ProfileStepsPageView({
    super.key,
  });

  @override
  State<ProfileStepsPageView> createState() => _ProfileStepsPageViewState();
}

class _ProfileStepsPageViewState extends State<ProfileStepsPageView> {
  PageController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (_, index) {
        if (index == 0) {
          return PersonalInfoView(
            onNext: () {
              _controller?.animateToPage(1,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linear);
            },
          );
        }
        if (index == 1) {
          return PhysicalInfoView(
            onNext: () {
              _controller?.animateToPage(2,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linear);
            },
          );
        }
        if (index == 2) {
          return MedicalInfoView(
            onNext: () {},
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
