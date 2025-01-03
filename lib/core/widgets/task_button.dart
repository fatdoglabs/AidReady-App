import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'loading_button.dart';

class TaskButton extends StatefulWidget {
  const TaskButton(
      {super.key, required this.child, this.color, this.onPressed});
  const TaskButton.secondary({super.key, required this.child, this.onPressed})
      : color = null;
  const TaskButton.icon(
      {super.key, required this.child, this.onPressed, this.color});

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
    if (widget.child is SvgPicture) {
      if (loading) {
        return LoadingButton.icon(
          color: widget.color,
        );
      }

      return ActionButton.icon(
        onPressed: () async {
          setState(() {
            loading = !loading;
          });
          widget.onPressed?.call();
        },
        color: widget.color,
        child: widget.child,
      );
    } else {
      if (widget.color != null) {
        if (loading) {
          return const LoadingButton.primary(
            label: SizedBox.shrink(),
          );
        }

        return ActionButton.primary(
          onPressed: () async {
            setState(() {
              loading = !loading;
            });
            widget.onPressed?.call();
          },
          color: widget.color,
          child: widget.child,
        );
      } else {
        if (loading) {
          return LoadingButton.secondary(label: const SizedBox.shrink());
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
}
