import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/requestBlood/presentation/widgets/member_portrait.dart';
import 'package:flutter/material.dart';

class RequestFamilyList extends StatelessWidget {
  const RequestFamilyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12.0, bottom: 16.0),
          child: Text(
            context.l10n.myFamily,
            style: bold.copyWith(color: secondary950, fontSize: 16.0),
          ).pOnly(left: 16.0),
        ),
        SizedBox(
          height: 120.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16.0),
            itemCount: 10,
            itemBuilder: (_, index) => Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: MemberPortrait(),
            ),
          ),
        )
      ],
    );
  }
}
