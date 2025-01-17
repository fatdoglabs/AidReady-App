import 'dart:io';

import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/option_modal.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/features/profile/domain/entity/image_source.dart';
import 'package:aid_ready/features/profile/domain/providers/profile_step_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/widgets/action_button.dart';
import '../../../../core/widgets/input_field.dart';

class PersonalInfoView extends ConsumerWidget {
  const PersonalInfoView({super.key, this.onNext});

  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(profileStepProvider);
    final pfpImage = ref.read(profileStepProvider).whenOrNull(
          data: (data) => data.pfpUrl,
        );
    return Stack(
      children: [
        Column(
          children: [
            30.verticalSpace,
            GestureDetector(
              onTap: () async {
                final _picker = ImagePicker();
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
                      file =
                          await _picker.pickImage(source: ImageSource.camera);
                      break;
                    case ImageSrc.gallery:
                      file =
                          await _picker.pickImage(source: ImageSource.gallery);
                      break;
                  }
                  final croppedFile = await ImageCropper().cropImage(
                    sourcePath: file!.path,
                    uiSettings: [
                      AndroidUiSettings(
                        toolbarTitle: 'Cropper',
                        toolbarColor: primary500,
                        toolbarWidgetColor: Colors.white,
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
                  ref
                      .read(profileStepProvider.notifier)
                      .updateProfile(imageUri: croppedFile!.path);
                }
              },
              child: Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryDark50,
                    border: Border.all(color: primaryDark100),
                    image: pfpImage.isNotNullNotEmpty
                        ? DecorationImage(
                            fit: BoxFit.cover,
                            image: FileImage(File(pfpImage!)))
                        : null),
                alignment: Alignment.center,
                child: pfpImage.isNullOrEmpty
                    ? const PictureView(
                        imageUri: addPictureIcon,
                      )
                    : null,
              ),
            ),
            5.verticalSpace,
            Text(
              context.l10n.addPictureOfYou,
              style: bold.copyWith(color: primaryDark810),
            ),
            30.verticalSpace,
            InputField(
              label: context.l10n.fullName.mandatory(),
              hint: context.l10n.enterEmail,
              onChanged: (value) {},
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          alignment: Alignment.bottomCenter,
          child: ActionButton.primary(
            onPressed: () {
              onNext?.call();
            },
            child: Center(
              child: Text(
                context.l10n.next,
                style: medium.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ).px(16.0);
  }
}
