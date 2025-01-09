import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:flutter/material.dart';

class GenderGroup extends StatefulWidget {
  const GenderGroup({super.key});

  @override
  State<GenderGroup> createState() => _GenderGroupState();
}

class _GenderGroupState extends State<GenderGroup> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
          child: Row(
            children: [
              Radio(
                value: false,
                onChanged: (_) {},
                groupValue: false,
              ),
              Text(
                context.l10n.male,
                style: regular.copyWith(color: primaryDark950),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
          child: Row(
            children: [
              Radio(
                value: false,
                onChanged: (_) {},
                groupValue: false,
              ),
              Text(
                context.l10n.female,
                style: regular.copyWith(color: primaryDark950),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
          child: Row(
            children: [
              Radio(
                value: false,
                onChanged: (_) {},
                groupValue: false,
              ),
              Text(
                context.l10n.others,
                style: regular.copyWith(color: primaryDark950),
              )
            ],
          ),
        )
      ],
    );
  }
}
