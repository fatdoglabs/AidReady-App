import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:flutter/material.dart';

class BloodGroupSelector extends StatelessWidget {
  const BloodGroupSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: primary100,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text('O+'),
            ),
            20.horizontalSpace,
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: primary100,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text('O-'),
            ),
            20.horizontalSpace,
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: primary100,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text('A-'),
            ),
            20.horizontalSpace,
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                decoration: BoxDecoration(
                  color: primary100,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Text('A+')),
          ],
        ),
        20.verticalSpace,
        Row(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: primary100,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text('B-'),
            ),
            20.horizontalSpace,
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: primary100,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text('B+'),
            ),
            20.horizontalSpace,
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: primary100,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text('AB+'),
            ),
            20.horizontalSpace,
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: primary100,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text('AB-'),
            ),
          ],
        ),
      ],
    );
  }
}
