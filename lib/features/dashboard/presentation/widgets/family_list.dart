import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
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
            context.l10n.myFamily,
            style: bold.copyWith(fontSize: 16.0, color: secondary950),
          ),
          trailing: Text(
            context.l10n.seeAll,
            style: regular.copyWith(fontSize: 12.0, color: primary600),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 12.0,
                spreadRadius: 4.0,
                color: containerShadow,
              )
            ],
          ),
          child: Row(
            children: [
              Member.placeholder(),
            ],
          ),
        )
      ],
    );
  }
}
