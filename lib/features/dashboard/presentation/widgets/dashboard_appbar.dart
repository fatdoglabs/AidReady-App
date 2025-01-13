import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/core/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: PictureView(
                    imageUri: textLogoIcon,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: PictureView(
                  imageUri: notificationIcon,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                padding: const EdgeInsets.all(1.0),
                child: const UserAvatar(
                  initials: "K",
                ),
              ),
            ],
          ),
          12.verticalSpace,
          Text(
            '${context.l10n.hello} John!',
            style: semibold.copyWith(fontSize: 20.0, color: Colors.white),
          ),
          Text(
            context.l10n.appTagLine,
            style: semibold.copyWith(fontSize: 12.0, color: Colors.white),
          ),
        ],
      ).px(20.0),
    );
  }
}
