import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/features/profile/domain/providers/profile_step_provider.dart';
import 'package:aid_ready/features/profile/presentation/widgets/blood_group_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/providers/profile_update_provider.dart';
import 'profile_step_button.dart';

class MedicalInfoView extends ConsumerWidget {
  const MedicalInfoView({super.key, this.onNext});

  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final step3 = ref.watch(profileStepProvider);
    ref.listen(profileUpdateProvider, (_, current) {
      current.whenOrNull(
        data: (data) {
          //onNext?.call();
        },
      );
    });
    bool isLoading = ref.watch(profileUpdateProvider).maybeWhen(
          orElse: () => false,
          loading: () => true,
        );
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.verticalSpace,
            context.l10n.bloodGroup.mandatory(),
            16.verticalSpace,
            BloodGroupSelector(
              onSelected: (group) {
                ref
                    .read(profileStepProvider.notifier)
                    .updateProfile(bloodgroup: group);
              },
            ),
            16.verticalSpace,
            Row(
              children: [
                SizedBox.square(
                    dimension: 24.0,
                    child: Checkbox(
                        value: step3.dontKnowBloodType,
                        onChanged: (value) {
                          ref
                              .read(profileStepProvider.notifier)
                              .updateProfile(bloodgroup: null);
                        })),
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
          child: ProfileSetupButton(
            isLoading: isLoading,
            isEnabled: step3.bloodgroup.isNotNullNotEmpty ||
                step3.dontKnowBloodType != null,
            onPressed: () {
              ref
                  .read(profileUpdateProvider.notifier)
                  .updatePhysicalInfo(ref.read(profileStepProvider));
            },
          ),
        ),
      ],
    ).px(16.0);
  }
}
