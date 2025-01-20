import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/features/onboarding/domain/providers/next_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileStepRow extends ConsumerWidget {
  const ProfileStepRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(nextPageProvider);
    Color firstTabColor;
    Color secondTabColor;
    Color thirdTabColor;
    switch (currentPage) {
      case 0:
        firstTabColor = warning300;
        secondTabColor = primaryDark100;
        thirdTabColor = primaryDark100;
        break;
      case 1:
        firstTabColor = primary500;
        secondTabColor = warning300;
        thirdTabColor = primaryDark100;
        break;
      case 2:
        firstTabColor = primary500;
        secondTabColor = primary500;
        thirdTabColor = warning300;
      default:
        firstTabColor = primaryDark100;
        secondTabColor = primaryDark100;
        thirdTabColor = primaryDark100;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            ref.read(nextPageProvider.notifier).update(0);
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2.0,
                  color: firstTabColor,
                ),
              ),
            ),
            child: Text(
              context.l10n.personalInfo,
              style: bold.copyWith(color: primaryDark950, fontSize: 12.0),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            ref.read(nextPageProvider.notifier).update(1);
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2.0,
                  color: secondTabColor,
                ),
              ),
            ),
            child: Text(
              context.l10n.physicalInfo,
              style: bold.copyWith(color: primaryDark950, fontSize: 12.0),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: thirdTabColor,
              ),
            ),
          ),
          child: Text(
            context.l10n.medicalInfo,
            style: bold.copyWith(color: primaryDark950, fontSize: 12.0),
          ),
        ),
      ],
    );
  }
}
