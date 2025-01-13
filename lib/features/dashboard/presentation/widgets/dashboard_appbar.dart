import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:flutter/material.dart';

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: PictureView(
                    imageUri: textLogoIcon,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: PictureView(
                  imageUri: notificationIcon,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: PictureView(
                  imageUri: defaultAvatarIcon,
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
