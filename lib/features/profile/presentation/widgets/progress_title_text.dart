import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/features/onboarding/domain/providers/next_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProgressTitleText extends ConsumerWidget {
  const ProgressTitleText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(nextPageProvider);
    String suffixText = "";
    suffixText = "(Step ${currentPage + 1} of 3)";
    return Text(
      "${context.l10n.completeProfile} $suffixText",
      style: semibold.copyWith(fontSize: 18.0),
    );
  }
}
