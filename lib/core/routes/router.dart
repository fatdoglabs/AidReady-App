import 'package:auto_route/auto_route.dart';
import 'package:aid_ready/core/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AidRouter extends $AidRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: DashboardRoute.page,
        ),
        AutoRoute(
          page: AuthRoute.page,
          keepHistory: false,
          initial: true,
        ),
      ];
}
