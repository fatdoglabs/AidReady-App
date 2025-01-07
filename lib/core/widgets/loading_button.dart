import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({
    super.key,
    this.color = Colors.black,
    this.border,
    this.borderColor,
    this.height,
    this.label = const SizedBox.shrink(),
  });

  const LoadingButton.primary({
    super.key,
    this.color = primary500,
    required this.label,
  })  : border = null,
        borderColor = null,
        height = 44;

  LoadingButton.secondary({
    super.key,
    this.borderColor,
    required this.label,
  })  : color = null,
        border = Border.all(color: borderColor ?? primary500),
        height = 44;

  const LoadingButton.small({
    super.key,
    this.color = primary500,
  })  : border = null,
        borderColor = null,
        height = 44,
        label = const SizedBox.shrink();

  const LoadingButton.icon({
    super.key,
    this.color,
  })  : border = null,
        borderColor = null,
        height = 48.0,
        label = const SizedBox.shrink();

  final Color? color;
  final BoxBorder? border;
  final Color? borderColor;
  final double? height;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    if (height == null) {
      return _LoadingIconOnly(color: color ?? primary500);
    }

    return Container(
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: BorderRadius.circular(12.0),
      ),
      height: context.h(height ?? 44.0),
      //width: context.w(height ?? 44.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      alignment: Alignment.center,
      child: const SizedBox.square(
        dimension: 20.0,
        child: CircularProgressIndicator.adaptive(
          strokeWidth: 2.0,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class _LoadingIconOnly extends StatelessWidget {
  const _LoadingIconOnly({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 20.0,
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 2.0,
        backgroundColor: color,
      ),
    );
  }
}
