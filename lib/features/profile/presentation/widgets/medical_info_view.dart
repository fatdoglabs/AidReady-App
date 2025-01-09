import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/features/profile/presentation/widgets/blood_group_selector.dart';
import 'package:flutter/material.dart';

class MedicalInfoView extends StatelessWidget {
  const MedicalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.bloodGroup,
              style: bold.copyWith(fontSize: 12.0, color: primaryDark700),
            ),
            const BloodGroupSelector(),
            Row(
              children: [
                Checkbox(value: false, onChanged: (_) {}),
                Text(
                  context.l10n.dontKnowBloodType,
                  style: regular.copyWith(color: secondary950),
                )
              ],
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          alignment: Alignment.bottomCenter,
          child: ActionButton.primary(
            onPressed: () {
              //context.router.push(const SignUpRoute());
            },
            child: Center(
              child: Text(
                context.l10n.completeProfile,
                style: medium.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ).px(16.0);
  }
}
