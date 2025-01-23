import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_provider.dart';
import 'package:aid_ready/features/dashboard/family/presentation/widgets/family_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/theme/color.dart';

class FamilyList extends ConsumerWidget {
  const FamilyList({super.key, this.onClick});

  final Function(FamilyMember)? onClick;

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
                  itemBuilder: (_, index) => FamilyListItem(
                        member: data[index],
                        onClick: onClick,
                        onMarkAsComplete: () {
                          ref
                              .read(familyProvider.notifier)
                              .markProfileComplete(data[index]);
                        },
                      ),
                  separatorBuilder: (_, index) => const Divider(
                        thickness: 1.0,
                        color: secondary50,
                        indent: 20.0,
                        endIndent: 20.0,
                      ),
                  itemCount: data.length)
              : const Text('No data').scrollable(),
        );
      },
      error: (error, _) {
        return const Text("data");
      },
      loading: () {
        {
          return const Center(
            child: CircularProgressIndicator.adaptive(
              backgroundColor: primary500,
            ),
          );
        }
      },
    );
  }
}
