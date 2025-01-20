import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/input_field.dart';
import 'package:aid_ready/features/profile/domain/entity/gender.dart';
import 'package:aid_ready/features/profile/presentation/widgets/gender_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/providers/profile_step_provider.dart';
import '../../domain/providers/profile_update_provider.dart';
import 'profile_step_button.dart';

class PhysicalInfoView extends ConsumerWidget {
  const PhysicalInfoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final step2 = ref.watch(profileStepProvider);
    bool isLoading = ref.watch(profileUpdateProvider).maybeWhen(
          orElse: () => false,
          loading: () => true,
        );

    Gender? gender;
    switch (step2.gender) {
      case "male":
        gender = Gender.male;
      case "female":
        gender = Gender.female;
      case "others":
        gender = Gender.others;
    }
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.verticalSpace,
            Text(
              context.l10n.gender,
              style: bold.copyWith(fontSize: 12.0, color: primaryDark700),
            ),
            10.verticalSpace,
            GenderGroup(
              value: gender,
              onChanged: (gender) {
                ref
                    .read(profileStepProvider.notifier)
                    .updateProfile(gender: gender.label.toLowerCase());
              },
            ),
            30.verticalSpace,
            InputField(
              label: context.l10n.dateOfBirth.mandatory(),
              hint: context.l10n.enterDateBirth,
              onChanged: (value) {
                ref
                    .read(profileStepProvider.notifier)
                    .updateProfile(dob: value);
              },
            ),
            30.verticalSpace,
            InputField(
              labelText: context.l10n.weight,
              hint: context.l10n.enterWeight,
              onChanged: (value) {
                ref
                    .read(profileStepProvider.notifier)
                    .updateProfile(weight: double.tryParse(value) ?? 0.0);
              },
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          alignment: Alignment.bottomCenter,
          child: ProfileSetupButton(
            isLoading: isLoading,
            isEnabled: step2.gender.isNotNullNotEmpty &&
                step2.dob.isNotNullNotEmpty &&
                step2.weight != null &&
                step2.weight != 0.0,
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
