import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/info_chip.dart';
import 'package:aid_ready/core/widgets/label.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/user_avatar.dart';

class FamilyListItem extends StatelessWidget {
  const FamilyListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 12.0),
      child: Row(
        children: [
          const SizedBox.square(
              dimension: 60.0,
              child: UserAvatar(
                initials: "J",
              )),
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
                      'Jack',
                      style: bold.copyWith(color: primaryDark950),
                    ),
                    20.horizontalSpace,
                    InfoChip(
                        color: secondary100,
                        child: Text('Brother',
                            style: bold.copyWith(
                                color: secondary500, fontSize: 8.0)))
                  ],
                ),
                10.verticalSpace,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Label(
                      value: 'Male',
                      prefix: PictureView(
                        imageUri: locationIcon,
                      ),
                    ),
                    20.horizontalSpace,
                    const Label(
                      value: '68 Kg',
                      prefix: PictureView(
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
