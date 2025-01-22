import 'dart:io';

import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/chip_select_modal.dart';
import 'package:aid_ready/core/widgets/input_field.dart';
import 'package:aid_ready/core/widgets/option_modal.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:aid_ready/features/dashboard/family/presentation/widgets/add_member_button.dart';
import 'package:aid_ready/features/profile/domain/entity/gender.dart';
import 'package:aid_ready/features/profile/domain/entity/image_source.dart';
import 'package:aid_ready/features/profile/presentation/widgets/gender_group.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class AddMemberForm extends StatefulWidget {
  const AddMemberForm({super.key, this.onAddMember, this.member});

  final FamilyMember? member;

  final List<String> relations = const [
    "Grand Father",
    "Grand Mother",
    "Mother",
    "Father",
    "Wife",
    "Husband",
    "Brother",
    "Sister",
    "Uncle",
    "Aunt",
    "Son",
    "Daughter",
  ];

  final Function(FamilyMember)? onAddMember;

  @override
  State<AddMemberForm> createState() => _AddMemberFormState();
}

class _AddMemberFormState extends State<AddMemberForm> {
  String imageUrl = "";
  String fullName = "";
  Gender? gender;
  String familyRelation = "";
  int weight = 0;
  String dob = "";

  @override
  void initState() {
    super.initState();
    imageUrl = widget.member?.image ?? "";
    fullName = widget.member?.name ?? "";
    familyRelation = widget.member?.relation ?? "";
    switch (widget.member?.gender) {
      case "Male":
        gender = Gender.male;
      case "Female":
        gender = Gender.female;
      case "Others":
        gender = Gender.others;
      default:
        gender = null;
    }
    weight = widget.member?.weight ?? 0;
    dob = widget.member?.dob ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      children: [
        GestureDetector(
          onTap: () async {
            final picker = ImagePicker();
            final src = await showModalBottomSheet<ImageSrc>(
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              builder: (_) => OptionModal<ImageSrc>(
                title: context.l10n.chooseImageFrom,
                items: const [ImageSrc.camera, ImageSrc.gallery],
                itemBuilder: (src) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(src);
                    },
                    child: Text(
                      src.label,
                      style: semibold.copyWith(fontSize: 16.0),
                    ),
                  );
                },
              ),
            );

            if (src != null) {
              XFile? file;
              switch (src) {
                case ImageSrc.camera:
                  file = await picker.pickImage(source: ImageSource.camera);
                  break;
                case ImageSrc.gallery:
                  file = await picker.pickImage(source: ImageSource.gallery);
                  break;
              }
              final croppedFile = await ImageCropper().cropImage(
                sourcePath: file!.path,
                uiSettings: [
                  AndroidUiSettings(
                    toolbarTitle: 'Cropper',
                    toolbarColor: primary500,
                    toolbarWidgetColor: Colors.white,
                    cropStyle: CropStyle.circle,
                    aspectRatioPresets: [
                      CropAspectRatioPreset.original,
                      CropAspectRatioPreset.square,
                    ],
                  ),
                  IOSUiSettings(
                    title: 'Cropper',
                    aspectRatioPresets: [
                      CropAspectRatioPreset.original,
                      CropAspectRatioPreset.square,
                    ],
                  ),
                ],
              );
              setState(() {
                imageUrl = croppedFile!.path;
              });
            }
          },
          child: imageUrl.circle(dimension: 120),
        ),
        10.verticalSpace,
        Text(
          context.l10n.addProfilePicture,
          textAlign: TextAlign.center,
          style: bold.copyWith(color: primaryDark810),
        ),
        20.verticalSpace,
        InputField(
          initialValue: fullName,
          label: context.l10n.fullName.mandatory(),
          hint: context.l10n.enterFullName,
          onChanged: (value) {
            setState(() {
              fullName = value;
            });
          },
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: context.l10n.gender.mandatory(),
        ),
        GenderGroup(
          value: gender,
          onChanged: (value) {
            setState(() {
              gender = value;
            });
          },
        ),
        30.verticalSpace,
        InputField(
          readOnly: true,
          initialValue: familyRelation,
          label: context.l10n.relation.mandatory(),
          hint: context.l10n.enterRelation,
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.selectRelation,
                style: regular.copyWith(color: primaryDark800),
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: primaryDark810,
              )
            ],
          ),
          onTap: () async {
            final relation = await showModalBottomSheet<String>(
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              builder: (_) => ChipSelectModal<String>(
                initialIndex: widget.relations.indexOf(familyRelation),
                title: context.l10n.defineRelation,
                items: widget.relations,
              ),
            );

            if (relation != null) {
              setState(() {
                familyRelation = relation;
              });
            }
          },
        ),
        30.verticalSpace,
        InputField(
          initialValue: weight != 0 ? weight.toString() : null,
          labelText: context.l10n.weight,
          hint: context.l10n.enterWeight,
          inputType: TextInputType.number,
          onChanged: (value) {
            setState(() {
              weight = int.tryParse(value) ?? 0;
            });
          },
        ),
        30.verticalSpace,
        InputField(
          initialValue: dob,
          readOnly: true,
          labelText: "${context.l10n.dateOfBirth} (DOB)",
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
        16.verticalSpace,
        AddMemberButton(
          isEnabled: fullName.isNotEmpty &&
              familyRelation.isNotEmpty &&
              gender != null,
          onPressed: () {
            widget.onAddMember?.call(FamilyMember(
              id: widget.member?.id,
              image: imageUrl,
              name: fullName,
              dob: dob,
              gender: gender!.label,
              weight: weight,
              relation: familyRelation,
            ));
          },
        ),
      ],
    );
  }
}
