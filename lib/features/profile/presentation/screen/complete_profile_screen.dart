import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/profile/presentation/widgets/profile_step_row.dart';
import 'package:aid_ready/features/profile/presentation/widgets/progress_title_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_steps_pageview.dart';

@RoutePage()
class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key, this.stepsCompleted = 0});

  final int stepsCompleted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ProgressTitleText(stepsCompleted: stepsCompleted),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.tellAboutYourself,
            style: bold.copyWith(fontSize: 20.0, color: primaryDark950),
          ).px(16.0),
          16.verticalSpace,
          ProfileStepRow(
            stepsCompleted: stepsCompleted,
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: ProfileStepsPageView(initialPage: stepsCompleted),
            ),
          ),
        ],
      ),
    );
  }
}
