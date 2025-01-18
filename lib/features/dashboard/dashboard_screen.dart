import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/bottom_tab_icon.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/dashboard_decoration.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../core/routes/router.gr.dart';
import '../../core/theme/color.dart';

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
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        FamilyRoute(),
        FamilyRoute(),
        FamilyRoute(),
        FamilyRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: tabsRouter.activeIndex == 0
                    ? const DashboardDecoration()
                    : null,
                child: child,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: kToolbarHeight,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  margin: const EdgeInsets.only(
                      left: 20, right: 20.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    color: primaryDark40,
                    borderRadius: BorderRadius.circular(58.0),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 24.0,
                        spreadRadius: 0.0,
                        color: containerShadow2,
                      )
                    ],
                  ),
                  child: BottomTabBar(
                    onTabClick: (index) {
                      tabsRouter.setActiveIndex(index);
                    },
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
