import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_update_provider.dart';
import 'package:aid_ready/features/dashboard/family/presentation/widgets/add_member_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/theme/styles.dart';

@RoutePage()
class AddMemberScreen extends StatelessWidget {
  const AddMemberScreen({super.key, this.member});

  final FamilyMember? member;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.addfamilyMember,
          style: bold.copyWith(color: primaryDark950, fontSize: 16.0),
        ),
      ),
      body: Consumer(builder: (_, ref, __) {
        ref.listen(familyUpdateProvider, (_, current) {
          current.whenOrNull(
            data: (status) {
              if (status) {
                Navigator.of(context).maybePop();
              }
            },
          );
        });

        return AddMemberForm(
          member: member,
          onAddMember: (member) {
            ref.read(familyUpdateProvider.notifier).addMember(member);
          },
        );
      }),
    );
  }
}
