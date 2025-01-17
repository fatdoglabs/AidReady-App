import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/task_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class ProfileSetupButton extends StatelessWidget {
  const ProfileSetupButton(
      {super.key,
      this.isEnabled = false,
      this.isLoading = false,
      this.onPressed});

  final bool isEnabled;
  final bool isLoading;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    if (!isEnabled) {
      return ActionButton.disabled(
        color: primary400,
        child: Center(
          child: Text(
            context.l10n.next,
            style: medium.copyWith(color: Colors.white),
          ).px(16.0),
        ),
      );
    } else {
      return TaskButton(
        color: primary500,
        onPressed: onPressed,
        loading: isLoading,
        child: Center(
          child: Text(
            context.l10n.next,
            style: medium.copyWith(color: Colors.white),
          ),
        ),
      );
    }
  }
}
