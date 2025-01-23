import 'dart:io';

import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/blood_group_selector.dart';
import 'package:aid_ready/core/widgets/input_field.dart';
import 'package:flutter/material.dart';

import '../../../dashboard/family/domain/entity/family_member.dart';
import 'complete_profile_button.dart';

class CompleteDonationProfileForm extends StatelessWidget {
  const CompleteDonationProfileForm({
    super.key,
    required this.member,
  });

  final FamilyMember? member;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            const BloodGroupSelector(),
            member?.weight == 0
                ? Container(
                    margin: const EdgeInsets.only(top: 30.0),
                    child: InputField(
                      labelText: context.l10n.weight,
                      hint: context.l10n.enterWeight,
                      inputType: TextInputType.number,
                      onChanged: (value) {},
                    ),
                  )
                : const SizedBox.shrink(),
            member?.dob.isNullOrEmpty ?? true
                ? Container(
                    margin: const EdgeInsets.only(top: 30.0),
                    child: InputField(
                      labelText: context.l10n.dateOfBirth,
                      hint: context.l10n.enterDateBirth,
                      
                      onChanged: (value) {},
                    ),
                  )
                : const SizedBox.shrink(),
            InputField(
              readOnly: true,
              labelText: context.l10n.lastDonationDate,
              hint: context.l10n.enterLastDonationDate,
              onTap: () async {
                final dateTime = await context.showDatePickerOverLay(
                  firstDate: DateTime(1940, 1, 1),
                  isIOS: Platform.isIOS,
                );
              },
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(
              bottom:
                  MediaQuery.of(context).viewPadding.bottom + kToolbarHeight),
          alignment: Alignment.bottomCenter,
          child: const CompleteProfileButton(),
        )
      ],
    ).px(16.0);
  }
}
