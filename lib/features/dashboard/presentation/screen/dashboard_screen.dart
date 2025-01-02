import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/dashboard/presentation/screen/blood_donation_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      context.l10n.bloodDonation,
      context.l10n.nearestHospitals,
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            indicatorColor: buttonColor,
            dividerColor: transparent,
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStateProperty.all<Color>(transparent),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: buttonColor,
              borderRadius: 90.rounded,
            ),
            labelPadding:
                EdgeInsets.symmetric(horizontal: context.w(20.0), vertical: 0),
            unselectedLabelColor: midGreyColor,
            labelColor: whiteColor,
            padding: EdgeInsets.symmetric(
                vertical: context.w(10.0), horizontal: context.h(6.0)),
            //controller: tabController,
            onTap: null,
            isScrollable: true,
            labelStyle: text14PxMedium.rubik.lineHeight(22).white,
            tabs: List.generate(
              tabs.length,
              (index) => Tab(
                height: context.h(40.0),
                text: tabs[index],
              ),
            ),
          ),
        ),
        body: Builder(builder: (context) {
          return TabBarView(
            controller: DefaultTabController.of(context),
            children: [
              BloodDonationScreen(),
              Text('data'),
            ],
          );
        }),
      ),
    );
  }
}
