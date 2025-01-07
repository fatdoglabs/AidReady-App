import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LanguageItemRow extends StatelessWidget {
  const LanguageItemRow({super.key, required this.locale});

  final LocaleOpts locale;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(locale.name),
        SvgPicture.asset(locale.icon),
      ],
    );
  }
}
