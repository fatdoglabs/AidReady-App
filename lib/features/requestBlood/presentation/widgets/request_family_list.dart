import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';
import 'package:aid_ready/features/dashboard/family/domain/providers/family_provider.dart';
import 'package:aid_ready/features/requestBlood/domain/providers/blood_request_provider.dart';
import 'package:aid_ready/features/requestBlood/presentation/widgets/member_portrait.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RequestFamilyList extends ConsumerWidget {
  const RequestFamilyList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(familyProvider).maybeWhen(loading: () {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }, data: (data) {
      final effectiveFamilyList =
          ref.read(familyProvider.notifier).getAllFamilyMembers();
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12.0, bottom: 16.0),
            child: Text(
              context.l10n.myFamily,
              style: bold.copyWith(color: secondary950, fontSize: 16.0),
            ).pOnly(left: 16.0),
          ),
          SizedBox(
            height: 120.0,
            //child: FamilyList(effectiveFamilyList: effectiveFamilyList),
          )
        ],
      );
    }, orElse: () {
      return const SizedBox.shrink();
    });
  }
}

// class FamilyList extends StatelessWidget {
//   const FamilyList({
//     super.key,
//     required this.effectiveFamilyList,
//     this.onFamilySelcted,
//   });

//   final Function(FamilyMember)? onFamilySelected;
//   final List<FamilyMember> effectiveFamilyList;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       padding: const EdgeInsets.only(left: 16.0),
//       itemCount: effectiveFamilyList.length,
//       itemBuilder: (_, index) => Container(
//         margin: const EdgeInsets.only(right: 10.0),
//         child: GestureDetector(
//           onTap: () {
//             onFamilySelected?.call(effectiveFamilyList[index]);
//           },
//           child: MemberPortrait(
//             isSelected: ref.read(bloodRequestProvider).id ==
//                 effectiveFamilyList[index].id,
//             member: effectiveFamilyList[index],
//           ),
//         ),
//       ),
//     );
//   }
// }
