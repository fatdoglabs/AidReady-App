import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:flutter/material.dart';

class Member extends StatelessWidget {
  const Member({super.key, required this.imageUri, required this.name});
  const Member.placeholder({super.key})
      : imageUri = "",
        name = "";

  final String imageUri;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: primary100),
            child: imageUri.isNotEmpty
                ? PictureView(imageUri: imageUri)
                : const Icon(Icons.add),
          ),
          4.verticalSpace,
          Text(
            name.isNotEmpty ? name : context.l10n.addNew,
            style: regular.copyWith(fontSize: 12.0, color: secondary950),
          )
        ],
      ),
    );
  }
}
