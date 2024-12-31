import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';
import 'loading_button.dart';

class TaskButton extends StatefulWidget {
  const TaskButton({super.key, required this.child, this.onPressed})
      : color = primaryGreen;
  const TaskButton.secondary({super.key, required this.child, this.onPressed})
      : color = null;

  final Widget child;
  final VoidCallback? onPressed;
  final Color? color;

  @override
  State<TaskButton> createState() => _TaskButtonState();
}

class _TaskButtonState extends State<TaskButton> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    if (widget.color != null) {
      if (loading) {
        return const LoadingButton.primary();
      }

      return ActionButton.primary(
        onPressed: () async {
          setState(() {
            loading = !loading;
          });
          widget.onPressed?.call();
        },
        child: widget.child,
      );
    } else {
      if (loading) {
        return LoadingButton.secondary();
      }

      return ActionButton.secondary(
        onPressed: () async {
          setState(() {
            loading = !loading;
          });
          widget.onPressed?.call();
        },
        child: widget.child,
      );
    }
  }
}
