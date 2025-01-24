import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/widgets/bubble_decoration.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_update_provider.dart';
import 'package:aid_ready/features/profile/presentation/widgets/complete_donation_profile_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/theme/styles.dart';
import '../../../dashboard/family/domain/providers/family_provider.dart';

@RoutePage<bool>()
class CompleteFamilyProfileScreen extends StatelessWidget {
  const CompleteFamilyProfileScreen({super.key, required this.member});

  final FamilyMember member;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 1.0,
        title: Text(
          context.l10n.completeProfile,
          style: bold.copyWith(color: primaryDark950, fontSize: 16.0),
        ),
      ),
      body: DecoratedBox(
        decoration: const BubbleDecoration(),
        child: Consumer(builder: (_, ref, __) {
          ref.listen(familyUpdateProvider, (_, current) {
            current.whenOrNull(
              data: (data) {
                if (data.isRegisteredAsDonor) {
                  context.snack(context.l10n.donationProfileUpdated);
                  ref.read(familyProvider.notifier).markProfileComplete(data);
                  Navigator.of(context).maybePop();
                }
              },
            );
          });

          return CompleteDonationProfileForm(
            member: member,
            onCompleteProfile: (member) {
              ref
                  .read(familyUpdateProvider.notifier)
                  .updateFamilyProfile(member);
            },
          );
        }),
      ),
    );
  }
}
