import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/option_modal.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/features/profile/domain/entity/image_source.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/widgets/action_button.dart';
import '../../../../core/widgets/input_field.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key, this.onNext});

  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
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
                    title: "Choose image from",
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
                  switch (src) {
                    case ImageSrc.camera:
                      final file =
                          _picker.pickImage(source: ImageSource.camera);
                      break;
                    case ImageSrc.gallery:
                      final file =
                          _picker.pickImage(source: ImageSource.gallery);
                      break;
                  }
                }
              },
              child: Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryDark50,
                    border: Border.all(color: primaryDark100)),
                alignment: Alignment.center,
                child: const PictureView(
                  imageUri: addPictureIcon,
                ),
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
