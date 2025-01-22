import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/bottom_tab_icon.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/dashboard_decoration.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/routes/router.gr.dart';

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
        return Consumer(builder: (_, ref, __) {
          ref.listen(authProvider, (_, __) {});
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
                  child: SizedBox(
                    height: kToolbarHeight * 2,
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
        });
      },
    );
  }
}
