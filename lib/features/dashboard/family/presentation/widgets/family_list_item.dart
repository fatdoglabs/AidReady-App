import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/info_chip.dart';
import 'package:aid_ready/core/widgets/label.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/user_avatar.dart';

class FamilyListItem extends StatelessWidget {
  const FamilyListItem({super.key, required this.member});

  final FamilyMember member;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 12.0),
      child: Row(
        children: [
          SizedBox.square(
            dimension: 60.0,
            child: member.image.isNotNullNotEmpty
                ? member.image.circle()
                : UserAvatar(
                    initials: member.name![0],
                  ),
          ),
          10.horizontalSpace,
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      member.name!,
                      style: bold.copyWith(color: primaryDark950),
                    ),
                    20.horizontalSpace,
                    InfoChip(
                        color: secondary100,
                        child: Text(member.relation!,
                            style: bold.copyWith(
                                color: secondary500, fontSize: 8.0)))
                  ],
                ),
                10.verticalSpace,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Label(
                      value: member.gender!,
                      prefix: const PictureView(
                        imageUri: locationIcon,
                      ),
                    ),
                    20.horizontalSpace,
                    Label(
                      value: "${member.weight} kg",
                      prefix: const PictureView(
                        imageUri: locationIcon,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const PictureView(
            imageUri: attentionIcon,
          ),
        ],
      ),
    );
  }
}
