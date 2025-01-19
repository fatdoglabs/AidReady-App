import 'package:auto_route/auto_route.dart';
import 'package:aid_ready/core/routes/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AidRouter extends $AidRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LanguageSelectionRoute.page,
        ),
        AutoRoute(page: DashboardRoute.page, children: [
          AutoRoute(
            path: 'home',
            page: HomeRoute.page,
            initial: true,
          ),
          AutoRoute(
            path: 'family',
            page: FamilyRoute.page,
          ),
          AutoRoute(
            path: 'family',
            page: FamilyRoute.page,
          ),
          AutoRoute(
            path: 'family',
            page: FamilyRoute.page,
          ),
        ]),
        AutoRoute(
          page: SignInRoute.page,
        ),
        AutoRoute(
          page: SignUpRoute.page,
        ),
        AutoRoute(
          page: ForgotPasswordRoute.page,
        ),
        AutoRoute(
          page: SetPasswordRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: ResetSuccessRoute.page,
        ),
        AutoRoute(
          page: VerifyOtpRoute.page,
        ),
        AutoRoute(
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          page: CompleteProfileRoute.page,
        ),
        AutoRoute(
          page: AuthRoute.page,
        ),
        AutoRoute(
          page: AddMemberRoute.page,
        ),
      ];
}
