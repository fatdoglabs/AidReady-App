import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/task_button.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_update_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddMemberButton extends StatelessWidget {
  const AddMemberButton({super.key, this.isEnabled = false, this.onPressed});

  final bool isEnabled;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    if (!isEnabled) {
      return ActionButton.disabled(
        color: primary400,
        child: Center(
          child: Text(
            context.l10n.save,
            style: medium.copyWith(color: Colors.white),
          ).px(16.0),
        ),
      );
    } else {
      return Consumer(
        child: Center(
          child: Text(
            context.l10n.save,
            style: medium.copyWith(color: Colors.white),
          ),
        ),
        builder: (_, ref, child) {
          return ref.watch(familyUpdateProvider).maybeWhen(
            orElse: () {
              return TaskButton(
                color: primary500,
                onPressed: onPressed,
                loading: false,
                child: child!,
              );
            },
            loading: () {
              return TaskButton(
                color: primary500,
                onPressed: onPressed,
                loading: true,
                child: child!,
              );
            },
          );
        },
      );
    }
  }
}
