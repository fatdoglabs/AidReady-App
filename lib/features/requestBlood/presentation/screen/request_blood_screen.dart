import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/widgets/bubble_decoration.dart';
import 'package:aid_ready/features/requestBlood/presentation/widgets/request_family_list.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RequestBloodScreen extends StatelessWidget {
  const RequestBloodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 1.0,
        title: Text(
          context.l10n.requestBlood,
          style: bold.copyWith(color: primaryDark950, fontSize: 16.0),
        ),
      ),
      body: Container(
        decoration: const BubbleDecoration(),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [RequestFamilyList(), Expanded(child: SizedBox.shrink())],
        ),
      ),
    );
  }
}
