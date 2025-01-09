import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/profile/presentation/widgets/medical_info_view.dart';
import 'package:aid_ready/features/profile/presentation/widgets/personal_info_view.dart';
import 'package:aid_ready/features/profile/presentation/widgets/profile_step_row.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/physical_info_view.dart';

@RoutePage()
class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            context.l10n.completeProfile,
            style: semibold.copyWith(fontSize: 18.0),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.tellAboutYourself,
              style: bold.copyWith(fontSize: 20.0, color: primaryDark950),
            ),
            16.verticalSpace,
            const ProfileStepRow(),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: PageView.builder(
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      if (index == 0) return const PersonalInfoView();
                      if (index == 1) return const PhysicalInfoView();
                      if (index == 2) return const MedicalInfoView();
                      return const SizedBox.shrink();
                    }),
              ),
            ),
          ],
        ));
  }
}
