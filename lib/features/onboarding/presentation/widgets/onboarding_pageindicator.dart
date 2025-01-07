import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:flutter/material.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator(
      {super.key, required this.length, required this.index});

  final int length;
  final int index;

  @override
  Widget build(BuildContext context) {
    List<Widget> indicators = [];
    for (int i = 0; i < length; i++) {
      indicators.add(Container(
        width: 16.0,
        height: 4.0,
        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          color: i == index ? primary500 : primary200,
        ),
      ));
      if (i != length - 1) {
        indicators.add(5.horizontalSpace);
      }
    }
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: indicators,
      ),
    );
  }
}
