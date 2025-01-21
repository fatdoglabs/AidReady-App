import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_provider.dart';
import 'package:aid_ready/features/dashboard/family/presentation/widgets/add_member_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/theme/styles.dart';

@RoutePage()
class AddMemberScreen extends StatelessWidget {
  const AddMemberScreen({super.key});

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
        return AddMemberForm(
          onAddMember: (member) {
            ref.read(familyProvider.notifier).addMember(member);
          },
        );
      }),
    );
  }
}
