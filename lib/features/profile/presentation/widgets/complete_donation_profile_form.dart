import 'dart:io';

import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/blood_group_selector.dart';
import 'package:aid_ready/core/widgets/input_field.dart';
import 'package:flutter/material.dart';

import '../../../dashboard/family/domain/entity/family_member.dart';
import 'complete_profile_button.dart';

class CompleteDonationProfileForm extends StatefulWidget {
  const CompleteDonationProfileForm({
    super.key,
    required this.member,
    this.onCompleteProfile,
  });

  final FamilyMember member;
  final Function(FamilyMember)? onCompleteProfile;

  @override
  State<CompleteDonationProfileForm> createState() =>
      _CompleteDonationProfileFormState();
}

class _CompleteDonationProfileFormState
    extends State<CompleteDonationProfileForm> {
  String bloodGroup = "";
  String? dob;
  int? weight;
  String lastDonatedDate = "";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            BloodGroupSelector(
              bloodGroup: bloodGroup,
              onSelected: (group) {
                setState(() {
                  bloodGroup = group;
                });
              },
            ),
            widget.member.weight == 0
                ? Container(
                    margin: const EdgeInsets.only(bottom: 30.0),
                    child: InputField(
                      labelText: context.l10n.weight,
                      hint: context.l10n.enterWeight,
                      inputType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          weight = int.tryParse(value) ?? 0;
                        });
                      },
                    ),
                  )
                : const SizedBox.shrink(),
            widget.member.dob.isNullOrEmpty
                ? Container(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: InputField(
                      initialValue: dob,
                      readOnly: true,
                      labelText: context.l10n.dateOfBirth,
                      hint: context.l10n.enterDateBirth,
                      onTap: () async {
                        final dateTime = await context.showDatePickerOverLay(
                          firstDate: DateTime(1940, 1, 1),
                          isIOS: Platform.isIOS,
                        );
                        if (dateTime != null) {
                          setState(() {
                            dob = dateTime.pad();
                          });
                        }
                      },
                    ),
                  )
                : const SizedBox.shrink(),
            InputField(
              readOnly: true,
              initialValue: lastDonatedDate,
              labelText: context.l10n.lastDonationDate,
              hint: context.l10n.enterLastDonationDate,
              onTap: () async {
                final dateTime = await context.showDatePickerOverLay(
                  firstDate: DateTime(1940, 1, 1),
                  isIOS: Platform.isIOS,
                );
                if (dateTime != null) {
                  setState(() {
                    lastDonatedDate = dateTime.pad();
                  });
                }
              },
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(
              bottom:
                  MediaQuery.of(context).viewPadding.bottom + kToolbarHeight),
          alignment: Alignment.bottomCenter,
          child: CompleteProfileButton(
            isEnabled: (widget.member.dob.isNotNullNotEmpty
                    ? true
                    : dob.isNotNullNotEmpty) &&
                bloodGroup.isNotEmpty &&
                (widget.member.weight != 0 ? true : weight != 0) &&
                lastDonatedDate.isNotEmpty,
            onPressed: () {
              widget.onCompleteProfile?.call(widget.member.copyWith(
                dob: dob,
                bloodGroup: bloodGroup,
                lastDonationDate: lastDonatedDate,
                weight: weight,
              ));
            },
          ),
        )
      ],
    ).px(16.0);
  }
}
