import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/user_avatar.dart';
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
    Widget imageChild = const Icon(Icons.add);
    if (imageUri.isEmpty && name.isNotEmpty) {
      imageChild = UserAvatar(
        initials: name[0].toUpperCase(),
      );
    }

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
            child: imageChild,
          ),
          4.verticalSpace,
          Text(
            name.isNotEmpty ? name.capitalize() : context.l10n.addNew,
            style: regular.copyWith(fontSize: 12.0, color: secondary950),
          )
        ],
      ),
    );
  }
}
