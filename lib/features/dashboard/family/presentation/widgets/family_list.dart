import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_provider.dart';
import 'package:aid_ready/features/dashboard/family/presentation/widgets/family_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/theme/color.dart';

class FamilyList extends ConsumerWidget {
  const FamilyList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(familyProvider).when(
      data: (data) {
        return RefreshIndicator.adaptive(
          onRefresh: () async {
            ref.invalidate(familyProvider);
          },
          child: data.isNotEmpty
              ? ListView.separated(
                  itemBuilder: (_, index) => const FamilyListItem(),
                  separatorBuilder: (_, index) => const Divider(
                        thickness: 1.0,
                        color: secondary50,
                        indent: 20.0,
                        endIndent: 20.0,
                      ),
                  itemCount: 4)
              : Text('No data').scrollable(),
        );
      },
      error: (error, _) {
        return Text("data");
      },
      loading: () {
        {
          return Text("loading");
        }
      },
    );
  }
}