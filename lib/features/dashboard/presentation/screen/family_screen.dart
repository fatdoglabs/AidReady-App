import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/family_list_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: kToolbarHeight,
            child: Text(
              'My Family',
              style: bold.copyWith(color: primaryDark950),
            ),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (_, index) => const FamilyListItem(),
                  separatorBuilder: (_, index) => const Divider(
                        thickness: 1.0,
                        color: secondary50,
                        indent: 20.0,
                        endIndent: 20.0,
                      ),
                  itemCount: 4))
        ],
      ),
    );
  }
}
