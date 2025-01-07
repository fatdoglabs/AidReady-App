// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aid_ready/features/auth/presentation/screen/auth_screen.dart'
    as _i1;
import 'package:aid_ready/features/auth/presentation/screen/login_screen.dart'
    as _i4;
import 'package:aid_ready/features/auth/presentation/screen/register_screen.dart'
    as _i6;
import 'package:aid_ready/features/dashboard/presentation/screen/dashboard_screen.dart'
    as _i2;
import 'package:aid_ready/features/language/presentation/screen/language_selection_screen.dart'
    as _i3;
import 'package:aid_ready/features/onboarding/presentation/screen/onboarding_screen.dart'
    as _i5;
import 'package:auto_route/auto_route.dart' as _i7;

abstract class $AidRouter extends _i7.RootStackRouter {
  $AidRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardScreen(),
      );
    },
    LanguageSelectionRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LanguageSelectionScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OnboardingScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RegisterScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i7.PageRouteInfo<void> {
  const AuthRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LanguageSelectionScreen]
class LanguageSelectionRoute extends _i7.PageRouteInfo<void> {
  const LanguageSelectionRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LanguageSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageSelectionRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OnboardingScreen]
class OnboardingRoute extends _i7.PageRouteInfo<void> {
  const OnboardingRoute({List<_i7.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RegisterScreen]
class RegisterRoute extends _i7.PageRouteInfo<void> {
  const RegisterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
