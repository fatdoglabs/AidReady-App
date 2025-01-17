import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:flutter/material.dart';

class BloodGroupSelector extends StatefulWidget {
  const BloodGroupSelector({super.key, this.onSelected});

  final Function(String)? onSelected;

  @override
  State<BloodGroupSelector> createState() => _BloodGroupSelectorState();
}

class _BloodGroupSelectorState extends State<BloodGroupSelector> {
  String bloodGroup = "";
  String oPositive = "O +";
  String oNegative = "O -";
  String aNegative = "A -";
  String aPositive = "A +";
  String bNegative = "B -";
  String bPositive = "B +";
  String abPositive = "AB +";
  String abNegative = "AB -";
  @override
  Widget build(BuildContext context) {
    const chipPadding = EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                if (bloodGroup != oPositive) {
                  setState(() {
                    bloodGroup = oPositive;
                  });
                  widget.onSelected?.call(oPositive);
                }
              },
              child: Container(
                padding: chipPadding,
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
            16.horizontalSpace,
            GestureDetector(
              onTap: () {
                if (bloodGroup != oNegative) {
                  setState(() {
                    bloodGroup = oNegative;
                  });
                  widget.onSelected?.call(oNegative);
                }
              },
              child: Container(
                padding: chipPadding,
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
            16.horizontalSpace,
            GestureDetector(
              onTap: () {
                if (bloodGroup != aNegative) {
                  setState(() {
                    bloodGroup = aNegative;
                  });
                  widget.onSelected?.call(aNegative);
                }
              },
              child: Container(
                padding: chipPadding,
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
            16.horizontalSpace,
            GestureDetector(
              onTap: () {
                if (bloodGroup != aPositive) {
                  setState(() {
                    bloodGroup = aPositive;
                  });
                  widget.onSelected?.call(aPositive);
                }
              },
              child: Container(
                  padding: chipPadding,
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
            16.horizontalSpace,
            GestureDetector(
              onTap: () {
                if (bloodGroup != bNegative) {
                  setState(() {
                    bloodGroup = bNegative;
                  });
                  widget.onSelected?.call(bNegative);
                }
              },
              child: Container(
                padding: chipPadding,
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
          ],
        ),
        16.verticalSpace,
        Row(
          children: [
            GestureDetector(
              onTap: () {
                if (bloodGroup != bPositive) {
                  setState(() {
                    bloodGroup = bPositive;
                  });
                  widget.onSelected?.call(bPositive);
                }
              },
              child: Container(
                padding: chipPadding,
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
            16.horizontalSpace,
            GestureDetector(
              onTap: () {
                if (bloodGroup != abPositive) {
                  setState(() {
                    bloodGroup = abPositive;
                  });
                  widget.onSelected?.call(abPositive);
                }
              },
              child: Container(
                padding: chipPadding,
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
            16.horizontalSpace,
            GestureDetector(
              onTap: () {
                if (bloodGroup != abNegative) {
                  setState(() {
                    bloodGroup = abNegative;
                  });
                  widget.onSelected?.call(abNegative);
                }
              },
              child: Container(
                padding: chipPadding,
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
