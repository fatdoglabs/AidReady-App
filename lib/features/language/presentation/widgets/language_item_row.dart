import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/styles.dart';

class LanguageItemRow extends StatelessWidget {
  const LanguageItemRow({super.key, required this.locale});

  final LocaleOpts locale;

  @override
  Widget build(BuildContext context) {
    var kActiveDecoration = BoxDecoration(
        border: Border.all(width: 2, color: primary500),
        borderRadius: const BorderRadius.all(Radius.circular(17.0)));
    var kInActiveDecoration = BoxDecoration(
        border: Border.all(width: 2, color: primaryDark100),
        borderRadius: const BorderRadius.all(Radius.circular(17.0)));

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
      decoration: kActiveDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            locale.name,
            style: medium,
          ),
          SvgPicture.asset(locale.icon),
        ],
      ),
    );
  }
}
