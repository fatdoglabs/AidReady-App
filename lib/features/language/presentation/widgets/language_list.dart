import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/language/presentation/widgets/language_item_row.dart';
import 'package:flutter/material.dart';

class LanguageList extends StatefulWidget {
  const LanguageList({
    super.key,
    this.onEnglish,
    this.onNepali,
  });

  final VoidCallback? onEnglish;
  final VoidCallback? onNepali;

  @override
  State<LanguageList> createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Select Language',
          style: regular.copyWith(fontSize: 24.0, color: primaryDark950),
        ),
        24.verticalSpace,
        LanguageItemRow(
          locale: LocaleOpts.english,
          selected: _selected == 0,
          onSelected: () {
            setState(() {
              _selected = 0;
            });
            widget.onEnglish?.call();
          },
        ),
        16.verticalSpace,
        LanguageItemRow(
          locale: LocaleOpts.nepali,
          selected: _selected == 1,
          onSelected: () {
            setState(() {
              _selected = 1;
            });
            widget.onNepali?.call();
          },
        ),
      ],
    );
  }
}
