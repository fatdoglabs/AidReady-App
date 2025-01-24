import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/info_modal.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProfileWarningModal extends StatelessWidget {
  const ProfileWarningModal({super.key, required this.memberName});

  final String memberName;

  @override
  Widget build(BuildContext context) {
    return InfoModal(
      callToActionTop: GestureDetector(
        onTap: () {
          context.router.maybePop();
        },
        child: Text(
          context.l10n.close,
          style: semibold.copyWith(color: primary500, fontSize: 12.0),
        ),
      ),
      callToActionBottom: ActionButton.primary(
          onPressed: () {
            context.router.maybePop(true);
          },
          child: Center(
              child: Text(
            context.l10n.completeProfile,
            style: medium.copyWith(color: Colors.white),
          ))),
      children: [
        const PictureView(
          imageUri: warningIcon,
        ),
        16.verticalSpace,
        Text(
          "${memberName.capitalize()}${context.l10n.profileIncompleteWarning}",
          textAlign: TextAlign.center,
          style: regular.copyWith(fontSize: 18.0, color: primaryDark700),
        ),
      ],
    );
  }
}
