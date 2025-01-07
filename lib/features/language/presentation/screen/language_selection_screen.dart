import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/features/language/presentation/widgets/language_list.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const LanguageList(),
          Container(
            margin: const EdgeInsets.only(bottom: 64.0),
            alignment: Alignment.bottomCenter,
            child: ActionButton.primary(
              height: context.h(48.0),
              child: Center(
                child: Text(
                  'Next',
                  style: regular.copyWith(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ).px(16.0),
    );
  }
}
