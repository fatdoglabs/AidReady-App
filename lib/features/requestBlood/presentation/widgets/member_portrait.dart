import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:flutter/material.dart';

class MemberPortrait extends StatelessWidget {
  const MemberPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secondary50, borderRadius: BorderRadius.circular(8.0)),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.amber),
            width: 60.0,
            height: 60.0,
          ),
          Text(
            "Jack",
            style: semibold.copyWith(fontSize: 16.0, color: secondary950),
          ),
          Text(
            "Own",
            style: regular.copyWith(fontSize: 12.0, color: primaryDark800),
          ),
        ],
      ),
    );
  }
}
