import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/core/widgets/user_avatar.dart';
import 'package:flutter/material.dart';

class NearbyRequestList extends StatelessWidget {
  const NearbyRequestList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(
            context.l10n.nearbyRequest,
            style: bold.copyWith(fontSize: 16.0, color: secondary950),
          ),
          trailing: Text(
            context.l10n.seeAll,
            style: regular.copyWith(fontSize: 12.0, color: primary600),
          ),
        ),
        ...[1, 2].map((_) => Container(
              padding: const EdgeInsets.all(8.0),
              margin:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 12.0),
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
                  const SizedBox.square(
                      dimension: 40.0,
                      child: UserAvatar(
                        initials: "J",
                      )),
                  10.horizontalSpace,
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jack',
                          style: bold.copyWith(color: primaryDark950),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const PictureView(
                              imageUri: locationIcon,
                            ),
                            4.horizontalSpace,
                            Text(
                              'Address',
                              style: regular.copyWith(color: primaryDark700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 12.0),
                        margin: const EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                          color: danger100,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Text('O +',
                            style: bold.copyWith(
                                color: danger600, fontSize: 12.0)),
                      ),
                      Text(
                        '1.5 ${context.l10n.kmAway}',
                        style:
                            regular.copyWith(fontSize: 12.0, color: primary600),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
