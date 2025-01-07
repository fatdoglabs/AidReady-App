import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage(
      {super.key, required this.title, required this.description, this.image});

  final String title;
  final String description;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        kToolbarHeight.verticalSpace,
        PictureView(
          imageUri: image,
        ),
        20.verticalSpace,
        Text(
          title,
          style: bold.copyWith(color: primaryDark950, fontSize: 30.0),
          textAlign: TextAlign.center,
        ),
        20.verticalSpace,
        Text(
          description,
          style: regular.copyWith(color: primaryDark950),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
