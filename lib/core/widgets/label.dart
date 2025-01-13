import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({super.key, required this.value, this.prefix});

  final String value;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        prefix ?? const SizedBox.shrink(),
        4.horizontalSpace,
        Text(
          value,
          style: regular.copyWith(color: primaryDark700),
        ),
      ],
    );
  }
}
