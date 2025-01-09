import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/input_field.dart';
import 'package:aid_ready/features/profile/presentation/widgets/gender_group.dart';
import 'package:flutter/material.dart';

class PhysicalInfoView extends StatelessWidget {
  const PhysicalInfoView({super.key, this.onNext});

  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.gender,
              style: bold.copyWith(fontSize: 12.0, color: primaryDark700),
            ),
            GenderGroup(),
            30.verticalSpace,
            InputField(
              label: context.l10n.dateOfBirth,
              hint: context.l10n.enterEmail,
              onChanged: (value) {},
            ),
            30.verticalSpace,
            InputField(
              label: context.l10n.weight,
              hint: context.l10n.enterEmail,
              onChanged: (value) {},
            ),
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
                context.l10n.login,
                style: medium.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ).px(16.0);
  }
}
