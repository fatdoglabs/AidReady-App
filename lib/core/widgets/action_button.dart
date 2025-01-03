import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';

const kButtonBorderRadius = 12.0;

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.child,
    this.onPressed,
    this.border,
    this.borderRadius,
    this.color,
    this.borderColor,
    this.height,
    this.width,
  });

  const ActionButton.primary({
    super.key,
    required this.child,
    this.onPressed,
    this.color = primaryGreen,
    this.width,
    this.height,
  })  : border = null,
        borderRadius = kButtonBorderRadius,
        borderColor = null;

  ActionButton.secondary({
    super.key,
    required this.child,
    this.onPressed,
    this.color = green20,
    this.borderColor,
    this.width,
    this.height,
  })  : border = Border.all(color: borderColor ?? green30),
        borderRadius = kButtonBorderRadius;

  const ActionButton.disabled({
    super.key,
    required this.child,
    this.color = black50,
    this.width,
    this.height,
  })  : border = null,
        borderRadius = kButtonBorderRadius,
        borderColor = null,
        onPressed = null;

  const ActionButton.small({
    super.key,
    required this.child,
    this.onPressed,
    this.color = primaryGreen,
  })  : border = null,
        borderRadius = kButtonBorderRadius,
        borderColor = null,
        height = 44.0,
        width = 44;

  const ActionButton.icon({
    super.key,
    required this.child,
    this.onPressed,
    this.color = primaryGreen,
  })  : border = null,
        borderRadius = 12.0,
        borderColor = null,
        height = 24.0,
        width = 24.0;

  final Widget child;
  final VoidCallback? onPressed;
  final BoxBorder? border;
  final double? borderRadius;
  final Color? color;
  final Color? borderColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
      ),
      height: context.h(height ?? 44.0),
      child: InkWell(
        onTap: onPressed,
        child: child,
      ),
    );
  }
}
