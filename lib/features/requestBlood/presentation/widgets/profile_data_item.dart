import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ProfileDataItem extends StatelessWidget {
  const ProfileDataItem({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title.toUpperCase(),
          style: regular.copyWith(fontSize: 12.0, color: primaryDark600),
        ),
        Text(
          value,
          style: semibold.copyWith(fontSize: 16.0, color: primaryDark950),
        ),
      ],
    );
  }
}
