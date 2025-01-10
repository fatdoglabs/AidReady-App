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
  int _selected = -1;

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
                value: _selected == 0,
                onChanged: (value) {
                  if (value ?? false) {
                    setState(() {
                      _selected = 0;
                    });
                  }
                },
                groupValue: true,
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
                value: _selected == 1,
                onChanged: (value) {
                  if (value ?? false) {
                    setState(() {
                      _selected = 1;
                    });
                  }
                },
                groupValue: true,
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
                value: _selected == 2,
                onChanged: (value) {
                  if (value ?? false) {
                    setState(() {
                      _selected = 2;
                    });
                  }
                },
                groupValue: true,
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
