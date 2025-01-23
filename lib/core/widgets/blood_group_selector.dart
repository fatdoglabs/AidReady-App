import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:flutter/material.dart';

const String oPositive = "O +";
const String oNegative = "O -";
const String aNegative = "A -";
const String aPositive = "A +";
const String bNegative = "B -";
const String bPositive = "B +";
const String abPositive = "AB +";
const String abNegative = "AB -";

class BloodGroupSelector extends StatelessWidget {
  const BloodGroupSelector({super.key, this.bloodGroup, this.onSelected});

  final String? bloodGroup;
  final Function(String)? onSelected;

  @override
  Widget build(BuildContext context) {
    const chipPadding = EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0);
    const chipMargin = EdgeInsets.only(right: 16.0, bottom: 16.0);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        context.l10n.bloodGroup.mandatory(),
        16.verticalSpace,
        Wrap(
          children: [
            GestureDetector(
              onTap: () {
                if (bloodGroup != oPositive) {
                  onSelected?.call(oPositive);
                }
              },
              child: Container(
                padding: chipPadding,
                margin: chipMargin,
                decoration: BoxDecoration(
                  color: bloodGroup == oPositive ? primary500 : primary100,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(oPositive,
                    style: regular.copyWith(
                        color: bloodGroup == oPositive
                            ? Colors.white
                            : primaryDark950)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (bloodGroup != oNegative) {
                  onSelected?.call(oNegative);
                }
              },
              child: Container(
                padding: chipPadding,
                margin: chipMargin,
                decoration: BoxDecoration(
                  color: bloodGroup == oNegative ? primary500 : primary100,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(oNegative,
                    style: regular.copyWith(
                        color: bloodGroup == oNegative
                            ? Colors.white
                            : primaryDark950)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (bloodGroup != aNegative) {
                  onSelected?.call(aNegative);
                }
              },
              child: Container(
                padding: chipPadding,
                margin: chipMargin,
                decoration: BoxDecoration(
                  color: bloodGroup == aNegative ? primary500 : primary100,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(aNegative,
                    style: regular.copyWith(
                        color: bloodGroup == aNegative
                            ? Colors.white
                            : primaryDark950)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (bloodGroup != aPositive) {
                  onSelected?.call(aPositive);
                }
              },
              child: Container(
                  padding: chipPadding,
                  margin: chipMargin,
                  decoration: BoxDecoration(
                    color: bloodGroup == aPositive ? primary500 : primary100,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Text(aPositive,
                      style: regular.copyWith(
                          color: bloodGroup == aPositive
                              ? Colors.white
                              : primaryDark950))),
            ),
            GestureDetector(
              onTap: () {
                if (bloodGroup != bNegative) {
                  onSelected?.call(bNegative);
                }
              },
              child: Container(
                padding: chipPadding,
                margin: chipMargin,
                decoration: BoxDecoration(
                  color: bloodGroup == bNegative ? primary500 : primary100,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(bNegative,
                    style: regular.copyWith(
                        color: bloodGroup == bNegative
                            ? Colors.white
                            : primaryDark950)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (bloodGroup != bPositive) {
                  onSelected?.call(bPositive);
                }
              },
              child: Container(
                padding: chipPadding,
                margin: chipMargin,
                decoration: BoxDecoration(
                  color: bloodGroup == bPositive ? primary500 : primary100,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(bPositive,
                    style: regular.copyWith(
                        color: bloodGroup == bPositive
                            ? Colors.white
                            : primaryDark950)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (bloodGroup != abPositive) {
                  onSelected?.call(abPositive);
                }
              },
              child: Container(
                padding: chipPadding,
                margin: chipMargin,
                decoration: BoxDecoration(
                  color: bloodGroup == abPositive ? primary500 : primary100,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(abPositive,
                    style: regular.copyWith(
                        color: bloodGroup == abPositive
                            ? Colors.white
                            : primaryDark950)),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (bloodGroup != abNegative) {
                  onSelected?.call(abNegative);
                }
              },
              child: Container(
                padding: chipPadding,
                margin: chipMargin,
                decoration: BoxDecoration(
                  color: bloodGroup == abNegative ? primary500 : primary100,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(abNegative,
                    style: regular.copyWith(
                        color: bloodGroup == abNegative
                            ? Colors.white
                            : primaryDark950)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
