import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/widgets/bubble_decoration.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:aid_ready/features/profile/presentation/widgets/complete_donation_profile_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/styles.dart';

@RoutePage<bool>()
class CompleteFamilyProfileScreen extends StatelessWidget {
  const CompleteFamilyProfileScreen({super.key, this.member});

  final FamilyMember? member;

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
        child: CompleteDonationProfileForm(member: member),
      ),
    );
  }
}
