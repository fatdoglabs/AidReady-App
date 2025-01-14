import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/task_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key, this.isEnabled = false, this.onPressed});

  final bool isEnabled;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    if (!isEnabled) {
      return ActionButton.disabled(
        child: Center(
          child: Text(
            "disabled",
            style: medium.copyWith(color: Colors.white),
          ).px(16.0),
        ),
      );
    } else {
      return TaskButton(
        color: primary500,
        onPressed: onPressed,
        loading: false,
        child: Center(
          child: Text(
            context.l10n.resetPassword,
            style: medium.copyWith(color: Colors.white),
          ),
        ),
      );
    }
  }
}
