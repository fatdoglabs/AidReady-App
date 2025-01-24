import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/core/widgets/user_avatar.dart';
import 'package:aid_ready/features/auth/data/model/auth_token.dart';
import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardAppbar extends ConsumerWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authToken = ref.watch(authProvider).whenOrNull(
              data: (data) => data,
            ) ??
        AuthToken.unauthenticated();
    return SafeArea(
      minimum: const EdgeInsets.only(top: 16.0),
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
                child: const PictureView(
                  imageUri: notificationIcon,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                padding: const EdgeInsets.all(1.0),
                child: authToken.image.isNotNullNotEmpty
                    ? authToken.image.circle(dimension: 32.0)
                    : UserAvatar(
                        initials: authToken.name.isNotEmpty
                            ? authToken.name[0].toUpperCase()
                            : "",
                      ),
              ),
            ],
          ),
          12.verticalSpace,
          Text(
            '${context.l10n.hello} ${authToken.name}!',
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
