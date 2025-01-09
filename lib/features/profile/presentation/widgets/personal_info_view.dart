import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/action_button.dart';
import '../../../../core/widgets/input_field.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            30.verticalSpace,
            Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryDark50,
                  border: Border.all(color: primaryDark100)),
              alignment: Alignment.center,
              child: const PictureView(
                imageUri: addPictureIcon,
              ),
            ),
            5.verticalSpace,
            Text(
              context.l10n.addPictureOfYou,
              style: bold.copyWith(color: primaryDark810),
            ),
            30.verticalSpace,
            InputField(
              label: context.l10n.fullName,
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
              //context.router.push(const SignUpRoute());
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
