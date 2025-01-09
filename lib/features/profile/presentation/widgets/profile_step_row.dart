import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:flutter/material.dart';

class ProfileStepRow extends StatefulWidget {
  const ProfileStepRow({super.key});

  @override
  State<ProfileStepRow> createState() => _ProfileStepRowState();
}

class _ProfileStepRowState extends State<ProfileStepRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: primary500,
              ),
            ),
          ),
          child: Text(
            context.l10n.personalInfo,
            style: bold.copyWith(color: primaryDark950, fontSize: 12.0),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: warning300,
              ),
            ),
          ),
          child: Text(
            context.l10n.physicalInfo,
            style: bold.copyWith(color: primaryDark950, fontSize: 12.0),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: primaryDark100,
              ),
            ),
          ),
          child: Text(
            context.l10n.medicalInfo,
            style: bold.copyWith(color: primaryDark950, fontSize: 12.0),
          ),
        ),
      ],
    );
  }
}
