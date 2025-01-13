import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/member.dart';
import 'package:flutter/material.dart';

class FamilyList extends StatelessWidget {
  const FamilyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(
            'My Family',
            style: bold.copyWith(fontSize: 16.0, color: secondary950),
          ),
          trailing: Text(
            'See All',
            style: regular.copyWith(fontSize: 12.0, color: primary600),
          ),
        ),
        Container(
          child: Row(
            children: [
              Member.placeholder(),
              Member.placeholder(),
              Member.placeholder(),
              Member.placeholder(),
            ],
          ),
        )
      ],
    );
  }
}
