import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'loading_button.dart';

class TaskButton extends StatelessWidget {
  const TaskButton(
      {super.key,
      required this.child,
      this.color,
      this.onPressed,
      this.loading = false});
  const TaskButton.secondary({
    super.key,
    required this.child,
    this.onPressed,
    this.loading = false,
  }) : color = null;
  const TaskButton.icon({
    super.key,
    required this.child,
    this.onPressed,
    this.color,
    this.loading = false,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final Color? color;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    if (child is SvgPicture) {
      if (loading) {
        return LoadingButton.icon(
          color: color,
        );
      }

      return ActionButton.icon(
        onPressed: () async {
          onPressed?.call();
        },
        color: color,
        child: child,
      );
    } else {
      if (color != null) {
        if (loading) {
          return const LoadingButton.primary(
            label: SizedBox.shrink(),
          );
        }

        return ActionButton.primary(
          onPressed: () async {
            onPressed?.call();
          },
          color: color,
          child: child,
        );
      } else {
        if (loading) {
          return LoadingButton.secondary(label: const SizedBox.shrink());
        }

        return ActionButton.secondary(
          onPressed: () async {
            onPressed?.call();
          },
          child: child,
        );
      }
    }
  }
}
