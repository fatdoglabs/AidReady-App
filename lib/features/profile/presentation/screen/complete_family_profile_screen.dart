import 'dart:io';

import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/blood_group_selector.dart';
import 'package:aid_ready/core/widgets/input_field.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
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
        decoration: BoxDecoration(),
        child: ListView(
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
      ),
    );
  }
}
