import 'package:auto_route/auto_route.dart';
import 'package:aid_ready/core/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AidRouter extends $AidRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LanguageSelectionRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: DashboardRoute.page,
        ),
        AutoRoute(
          page: SignInRoute.page,
        ),
        AutoRoute(
          page: SignUpRoute.page,
        ),
        AutoRoute(
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          page: AuthRoute.page,
        ),
      ];
}
