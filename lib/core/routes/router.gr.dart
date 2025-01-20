// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aid_ready/features/auth/presentation/screen/auth_screen.dart'
    as _i2;
import 'package:aid_ready/features/auth/presentation/screen/forgot_password_screen.dart'
    as _i6;
import 'package:aid_ready/features/auth/presentation/screen/reset_success_screen.dart'
    as _i10;
import 'package:aid_ready/features/auth/presentation/screen/set_password_screen.dart'
    as _i11;
import 'package:aid_ready/features/auth/presentation/screen/signin_screen.dart'
    as _i12;
import 'package:aid_ready/features/auth/presentation/screen/signup_screen.dart'
    as _i13;
import 'package:aid_ready/features/auth/presentation/screen/verify_otp_screen.dart'
    as _i15;
import 'package:aid_ready/features/dashboard/dashboard_screen.dart' as _i4;
import 'package:aid_ready/features/dashboard/family/presentation/screen/add_member_screen.dart'
    as _i1;
import 'package:aid_ready/features/dashboard/family/presentation/screen/family_screen.dart'
    as _i5;
import 'package:aid_ready/features/dashboard/presentation/screen/home_screen.dart'
    as _i7;
import 'package:aid_ready/features/language/data/model/onboarding_item.dart'
    as _i18;
import 'package:aid_ready/features/language/presentation/screen/language_selection_screen.dart'
    as _i8;
import 'package:aid_ready/features/onboarding/presentation/screen/onboarding_screen.dart'
    as _i9;
import 'package:aid_ready/features/profile/presentation/screen/complete_profile_screen.dart'
    as _i3;
import 'package:aid_ready/features/splash/presentation/screen/splash_screen.dart'
    as _i14;
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

abstract class $AidRouter extends _i16.RootStackRouter {
  $AidRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    AddMemberRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddMemberScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthScreen(),
      );
    },
    CompleteProfileRoute.name: (routeData) {
      final args = routeData.argsAs<CompleteProfileRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CompleteProfileScreen(
          key: args.key,
          stepsCompleted: args.stepsCompleted,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardScreen(),
      );
    },
    FamilyRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FamilyScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgotPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeScreen(),
      );
    },
    LanguageSelectionRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LanguageSelectionScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.OnboardingScreen(
          key: args.key,
          items: args.items,
        ),
      );
    },
    ResetSuccessRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ResetSuccessScreen(),
      );
    },
    SetPasswordRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SetPasswordScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SplashScreen(),
      );
    },
    VerifyOtpRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyOtpRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.VerifyOtpScreen(
          key: args.key,
          email: args.email,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AddMemberScreen]
class AddMemberRoute extends _i16.PageRouteInfo<void> {
  const AddMemberRoute({List<_i16.PageRouteInfo>? children})
      : super(
          AddMemberRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddMemberRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i16.PageRouteInfo<void> {
  const AuthRoute({List<_i16.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CompleteProfileScreen]
class CompleteProfileRoute
    extends _i16.PageRouteInfo<CompleteProfileRouteArgs> {
  CompleteProfileRoute({
    _i17.Key? key,
    required int stepsCompleted,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          CompleteProfileRoute.name,
          args: CompleteProfileRouteArgs(
            key: key,
            stepsCompleted: stepsCompleted,
          ),
          initialChildren: children,
        );

  static const String name = 'CompleteProfileRoute';

  static const _i16.PageInfo<CompleteProfileRouteArgs> page =
      _i16.PageInfo<CompleteProfileRouteArgs>(name);
}

class CompleteProfileRouteArgs {
  const CompleteProfileRouteArgs({
    this.key,
    required this.stepsCompleted,
  });

  final _i17.Key? key;

  final int stepsCompleted;

  @override
  String toString() {
    return 'CompleteProfileRouteArgs{key: $key, stepsCompleted: $stepsCompleted}';
  }
}

/// generated route for
/// [_i4.DashboardScreen]
class DashboardRoute extends _i16.PageRouteInfo<void> {
  const DashboardRoute({List<_i16.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FamilyScreen]
class FamilyRoute extends _i16.PageRouteInfo<void> {
  const FamilyRoute({List<_i16.PageRouteInfo>? children})
      : super(
          FamilyRoute.name,
          initialChildren: children,
        );

  static const String name = 'FamilyRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i16.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LanguageSelectionScreen]
class LanguageSelectionRoute extends _i16.PageRouteInfo<void> {
  const LanguageSelectionRoute({List<_i16.PageRouteInfo>? children})
      : super(
          LanguageSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageSelectionRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnboardingScreen]
class OnboardingRoute extends _i16.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    _i17.Key? key,
    required List<_i18.OnboardingItem> items,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(
            key: key,
            items: items,
          ),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i16.PageInfo<OnboardingRouteArgs> page =
      _i16.PageInfo<OnboardingRouteArgs>(name);
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({
    this.key,
    required this.items,
  });

  final _i17.Key? key;

  final List<_i18.OnboardingItem> items;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key, items: $items}';
  }
}

/// generated route for
/// [_i10.ResetSuccessScreen]
class ResetSuccessRoute extends _i16.PageRouteInfo<void> {
  const ResetSuccessRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ResetSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetSuccessRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SetPasswordScreen]
class SetPasswordRoute extends _i16.PageRouteInfo<void> {
  const SetPasswordRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'SetPasswordRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SignInScreen]
class SignInRoute extends _i16.PageRouteInfo<void> {
  const SignInRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SignUpScreen]
class SignUpRoute extends _i16.PageRouteInfo<void> {
  const SignUpRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SplashScreen]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.VerifyOtpScreen]
class VerifyOtpRoute extends _i16.PageRouteInfo<VerifyOtpRouteArgs> {
  VerifyOtpRoute({
    _i17.Key? key,
    required String email,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          VerifyOtpRoute.name,
          args: VerifyOtpRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyOtpRoute';

  static const _i16.PageInfo<VerifyOtpRouteArgs> page =
      _i16.PageInfo<VerifyOtpRouteArgs>(name);
}

class VerifyOtpRouteArgs {
  const VerifyOtpRouteArgs({
    this.key,
    required this.email,
  });

  final _i17.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerifyOtpRouteArgs{key: $key, email: $email}';
  }
}
