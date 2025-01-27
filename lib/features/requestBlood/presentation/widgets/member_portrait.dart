import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/user_avatar.dart';

class MemberPortrait extends StatelessWidget {
  const MemberPortrait(
      {super.key, required this.member, this.isSelected = false, this.onClick});

  final FamilyMember member;
  final bool isSelected;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? secondary50 : null,
          borderRadius: BorderRadius.circular(8.0)),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox.square(
            dimension: 60.0,
            child: member.image.isNotNullNotEmpty
                ? member.image.circle()
                : UserAvatar(
                    initials: member.name![0],
                  ),
          ),
          Text(
            member.name.capitalize(),
            style: semibold.copyWith(fontSize: 16.0, color: secondary950),
          ),
          Text(
            member.relation ?? "",
            style: regular.copyWith(fontSize: 12.0, color: primaryDark800),
          ),
        ],
      ),
    );
  }
}
