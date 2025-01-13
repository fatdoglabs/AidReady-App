import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, this.initials = ""});

  final String initials;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      alignment: Alignment.center,
      decoration:
          const BoxDecoration(color: primary500, shape: BoxShape.circle),
      child: Text(
        initials.toUpperCase(),
        style: bold.copyWith(fontSize: 16.0, color: Colors.white),
      ),
    );
  }
}
