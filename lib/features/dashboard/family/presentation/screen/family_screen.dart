import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/features/dashboard/family/presentation/widgets/family_list.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              const Expanded(child: FamilyList())
            ],
          ),
          Container(
              padding: const EdgeInsets.only(
                  bottom: kToolbarHeight + 24.0, right: 20.0),
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: primary500,
                shape: const CircleBorder(),
                elevation: 0.0,
                onPressed: () {
                  context.router.push(const AddMemberRoute());
                },
              ))
        ],
      ),
    );
  }
}
