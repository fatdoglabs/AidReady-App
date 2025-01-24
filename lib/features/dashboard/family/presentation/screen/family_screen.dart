import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_provider.dart';
import 'package:aid_ready/features/dashboard/family/presentation/widgets/family_list.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/profile_warning_modal.dart';

@RoutePage()
class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 16.0),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
                child: Text(
                  context.l10n.myFamily,
                  style: bold.copyWith(color: primaryDark950),
                ),
              ),
              Expanded(child: FamilyList(
                onClick: (member) {
                  context.router.push(AddMemberRoute(member: member));
                },
              )),
              120.verticalSpace,
            ],
          ),
          Container(
            padding: const EdgeInsets.only(
                bottom: kToolbarHeight + 24.0, right: 20.0),
            alignment: Alignment.bottomRight,
            child: Consumer(
                child: const Icon(
                  Icons.add,
                  size: 40.0,
                  color: Colors.white,
                ),
                builder: (_, ref, child) {
                  return FloatingActionButton(
                    backgroundColor: primary500,
                    shape: const CircleBorder(),
                    elevation: 0.0,
                    onPressed: () async {
                      await context.router.push(AddMemberRoute());
                      final newMember = ref
                          .read(familyProvider.notifier)
                          .getRecentFamilyMember();
                      if (newMember != null) {
                        final shouldNavigate = await showModalBottomSheet<bool>(
                            context: context,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            builder: (_) => ProfileWarningModal(
                                  memberName: newMember.name!,
                                ));
                        if (shouldNavigate ?? false) {
                          context.router.push(
                              CompleteFamilyProfileRoute(member: newMember));
                        } else {
                          context.snack(context.l10n.memberAddedSuccessfully);
                        }
                      }
                    },
                    child: child!,
                  );
                }),
          )
        ],
      ),
    );
  }
}
