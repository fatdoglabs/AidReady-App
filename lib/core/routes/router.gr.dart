// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aid_ready/features/auth/presentation/screen/auth_screen.dart'
    as _i1;
import 'package:aid_ready/features/auth/presentation/screen/forgot_password_screen.dart'
    as _i3;
import 'package:aid_ready/features/auth/presentation/screen/set_password_screen.dart'
    as _i6;
import 'package:aid_ready/features/auth/presentation/screen/signin_screen.dart'
    as _i7;
import 'package:aid_ready/features/auth/presentation/screen/signup_screen.dart'
    as _i8;
import 'package:aid_ready/features/auth/presentation/screen/verify_otp_screen.dart'
    as _i9;
import 'package:aid_ready/features/dashboard/presentation/screen/dashboard_screen.dart'
    as _i2;
import 'package:aid_ready/features/language/data/model/onboarding_item.dart'
    as _i12;
import 'package:aid_ready/features/language/presentation/screen/language_selection_screen.dart'
    as _i4;
import 'package:aid_ready/features/onboarding/presentation/screen/onboarding_screen.dart'
    as _i5;
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

abstract class $AidRouter extends _i10.RootStackRouter {
  $AidRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ForgotPasswordScreen(),
      );
    },
    LanguageSelectionRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LanguageSelectionScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.OnboardingScreen(
          key: args.key,
          items: args.items,
        ),
      );
    },
    SetPasswordRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SetPasswordScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SignUpScreen(),
      );
    },
    VerifyOtpRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.VerifyOtpScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i10.PageRouteInfo<void> {
  const AuthRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i10.PageRouteInfo<void> {
  const DashboardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i10.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LanguageSelectionScreen]
class LanguageSelectionRoute extends _i10.PageRouteInfo<void> {
  const LanguageSelectionRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LanguageSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageSelectionRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OnboardingScreen]
class OnboardingRoute extends _i10.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    _i11.Key? key,
    required List<_i12.OnboardingItem> items,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(
            key: key,
            items: items,
          ),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i10.PageInfo<OnboardingRouteArgs> page =
      _i10.PageInfo<OnboardingRouteArgs>(name);
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({
    this.key,
    required this.items,
  });

  final _i11.Key? key;

  final List<_i12.OnboardingItem> items;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key, items: $items}';
  }
}

/// generated route for
/// [_i6.SetPasswordScreen]
class SetPasswordRoute extends _i10.PageRouteInfo<void> {
  const SetPasswordRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'SetPasswordRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignInScreen]
class SignInRoute extends _i10.PageRouteInfo<void> {
  const SignInRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SignUpScreen]
class SignUpRoute extends _i10.PageRouteInfo<void> {
  const SignUpRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.VerifyOtpScreen]
class VerifyOtpRoute extends _i10.PageRouteInfo<void> {
  const VerifyOtpRoute({List<_i10.PageRouteInfo>? children})
      : super(
          VerifyOtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'VerifyOtpRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
