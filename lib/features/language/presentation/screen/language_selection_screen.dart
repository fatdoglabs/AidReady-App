import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/features/language/presentation/widgets/language_item_row.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Select Language',
            style: medium.copyWith(fontSize: 24.0, color: primaryDark950),
          ),
          24.verticalSpace,
          const LanguageItemRow(
            locale: LocaleOpts.english,
          ),
          16.verticalSpace,
          const LanguageItemRow(
            locale: LocaleOpts.nepali,
          ),
          24.verticalSpace,
          ActionButton.primary(
            child: Center(
              child: Text(
                'Next',
                style: regular.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ).px(16.0),
    );
  }
}
