import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/features/dashboard/home/widgets/add_family_decoration.dart';
import 'package:flutter/material.dart';

class AddFamilyMemberCard extends StatelessWidget {
  const AddFamilyMemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          alignment: Alignment.center,
          decoration: const AddFamilyDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const PictureView(
                imageUri: familyPlaceholderImage,
              ),
              10.verticalSpace,
              Text(
                'Strengthen Your Impact',
                style: bold.copyWith(color: secondary950),
              ),
              Text(
                'Add family members to save more lives together.',
                style: regular.copyWith(fontSize: 12.0, color: primaryDark600),
              ),
              10.verticalSpace,
              ActionButton.primary(
                width: 200.0,
                height: 36.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Add Family Members',
                    style:
                        semibold.copyWith(fontSize: 16.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
