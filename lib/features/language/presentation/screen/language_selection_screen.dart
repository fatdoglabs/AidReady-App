import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:aid_ready/features/language/presentation/widgets/language_item_row.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LanguageItemRow(
            locale: LocaleOpts.english,
          ),
          LanguageItemRow(
            locale: LocaleOpts.nepali,
          ),
        ],
      ),
    );
  }
}
