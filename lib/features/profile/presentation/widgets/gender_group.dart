import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/profile/domain/entity/gender.dart';
import 'package:flutter/material.dart';

class GenderGroup extends StatelessWidget {
  const GenderGroup({super.key, this.value, this.onChanged});

  final Gender? value;
  final Function(Gender)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            onChanged?.call(Gender.male);
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1.0, color: primaryDark50)),
            margin: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                SizedBox.square(
                  dimension: 24.0,
                  child: Radio(
                    activeColor: primary500,
                    value: value == Gender.male,
                    onChanged: (value) {
                      onChanged?.call(Gender.male);
                    },
                    groupValue: true,
                  ),
                ),
                10.horizontalSpace,
                Text(
                  context.l10n.male,
                  style: regular.copyWith(color: primaryDark950),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            onChanged?.call(Gender.female);
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1.0, color: primaryDark50)),
            margin: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                SizedBox.square(
                  dimension: 24.0,
                  child: Radio(
                    activeColor: primary500,
                    value: value == Gender.female,
                    onChanged: (value) {
                      onChanged?.call(Gender.female);
                    },
                    groupValue: true,
                  ),
                ),
                10.horizontalSpace,
                Text(
                  context.l10n.female,
                  style: regular.copyWith(color: primaryDark950),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            onChanged?.call(Gender.others);
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 1.0, color: primaryDark50)),
            child: Row(
              children: [
                SizedBox.square(
                  dimension: 24.0,
                  child: Radio(
                    activeColor: primary500,
                    value: value == Gender.others,
                    onChanged: (value) {
                      onChanged?.call(Gender.others);
                    },
                    groupValue: true,
                  ),
                ),
                10.horizontalSpace,
                Text(
                  context.l10n.others,
                  style: regular.copyWith(color: primaryDark950),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
