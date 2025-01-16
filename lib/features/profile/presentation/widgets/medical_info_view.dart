import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';
import 'package:aid_ready/features/profile/domain/providers/profile_step_provider.dart';
import 'package:aid_ready/features/profile/presentation/widgets/blood_group_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MedicalInfoView extends ConsumerWidget {
  const MedicalInfoView({super.key, this.onNext});

  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final info =
        ref.watch(profileStepProvider).whenOrNull() ?? ProfileInfo.empty();
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.verticalSpace,
            context.l10n.bloodGroup.mandatory(),
            16.verticalSpace,
            const BloodGroupSelector(),
            16.verticalSpace,
            Row(
              children: [
                SizedBox.square(
                    dimension: 24.0,
                    child: Checkbox(value: false, onChanged: (value) {})),
                10.horizontalSpace,
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
              onNext?.call();
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
