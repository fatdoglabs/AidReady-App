import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/requestBlood/domain/providers/blood_request_provider.dart';
import 'package:aid_ready/features/requestBlood/presentation/widgets/profile_data_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/picture_view.dart';
import '../../../../core/widgets/user_avatar.dart';

class DonationDetailProfile extends ConsumerWidget {
  const DonationDetailProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedMember = ref.watch(bloodRequestProvider);

    if (selectedMember.isRegisteredAsDonor) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: primary200,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Donation Details',
              style: semibold.copyWith(color: secondary950, fontSize: 16.0),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox.square(
                    dimension: 60.0,
                    child: selectedMember.image.isNotNullNotEmpty
                        ? selectedMember.image.circle()
                        : UserAvatar(
                            initials: selectedMember.name![0],
                          ),
                  ),
                  10.horizontalSpace,
                  Text(
                    selectedMember.name.capitalize(),
                    style:
                        semibold.copyWith(fontSize: 24.0, color: secondary950),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileDataItem(
                        title: "Gender",
                        value: selectedMember.gender.capitalize(),
                      ),
                      20.verticalSpace,
                      ProfileDataItem(
                        title: "Weight",
                        value: "${selectedMember.weight} kg",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileDataItem(
                        title: "Age",
                        value: "${selectedMember.dob.age()}",
                      ),
                      20.verticalSpace,
                      ProfileDataItem(
                        title: "Recently Donated",
                        value: "${selectedMember.lastDonationDate ?? ""}",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            ProfileDataItem(
              title: "Count from last donation",
              value: "25 yrs",
            ),
          ],
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        margin: const EdgeInsets.only(top: 30.0, bottom: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const PictureView(
              imageUri: warningIcon,
            ),
            16.verticalSpace,
            Text(
              "${selectedMember.name.capitalize()}${context.l10n.profileIncompleteWarning}",
              textAlign: TextAlign.center,
              style: regular.copyWith(fontSize: 18.0, color: primaryDark700),
            ),
          ],
        ),
      );
    }
  }
}
