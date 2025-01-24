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
    as _i7;
import 'package:aid_ready/features/auth/presentation/screen/reset_success_screen.dart'
    as _i12;
import 'package:aid_ready/features/auth/presentation/screen/set_password_screen.dart'
    as _i13;
import 'package:aid_ready/features/auth/presentation/screen/signin_screen.dart'
    as _i14;
import 'package:aid_ready/features/auth/presentation/screen/signup_screen.dart'
    as _i15;
import 'package:aid_ready/features/auth/presentation/screen/verify_otp_screen.dart'
    as _i17;
import 'package:aid_ready/features/dashboard/dashboard_screen.dart' as _i5;
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart'
    as _i20;
import 'package:aid_ready/features/dashboard/family/presentation/screen/add_member_screen.dart'
    as _i1;
import 'package:aid_ready/features/dashboard/family/presentation/screen/family_screen.dart'
    as _i6;
import 'package:aid_ready/features/dashboard/home/presentation/screen/home_screen.dart'
    as _i8;
import 'package:aid_ready/features/language/data/model/onboarding_item.dart'
    as _i21;
import 'package:aid_ready/features/language/presentation/screen/language_selection_screen.dart'
    as _i9;
import 'package:aid_ready/features/onboarding/presentation/screen/onboarding_screen.dart'
    as _i10;
import 'package:aid_ready/features/profile/presentation/screen/complete_family_profile_screen.dart'
    as _i3;
import 'package:aid_ready/features/profile/presentation/screen/complete_profile_screen.dart'
    as _i4;
import 'package:aid_ready/features/requestBlood/presentation/screen/request_blood_screen.dart'
    as _i11;
import 'package:aid_ready/features/splash/presentation/screen/splash_screen.dart'
    as _i16;
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

abstract class $AidRouter extends _i18.RootStackRouter {
  $AidRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    AddMemberRoute.name: (routeData) {
      final args = routeData.argsAs<AddMemberRouteArgs>(
          orElse: () => const AddMemberRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddMemberScreen(
          key: args.key,
          member: args.member,
        ),
      );
    },
    AuthRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthScreen(),
      );
    },
    CompleteFamilyProfileRoute.name: (routeData) {
      final args = routeData.argsAs<CompleteFamilyProfileRouteArgs>();
      return _i18.AutoRoutePage<bool>(
        routeData: routeData,
        child: _i3.CompleteFamilyProfileScreen(
          key: args.key,
          member: args.member,
        ),
      );
    },
    CompleteProfileRoute.name: (routeData) {
      final args = routeData.argsAs<CompleteProfileRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CompleteProfileScreen(
          key: args.key,
          stepsCompleted: args.stepsCompleted,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashboardScreen(),
      );
    },
    FamilyRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.FamilyScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ForgotPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomeScreen(),
      );
    },
    LanguageSelectionRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LanguageSelectionScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.OnboardingScreen(
          key: args.key,
          items: args.items,
        ),
      );
    },
    RequestBloodRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RequestBloodScreen(),
      );
    },
    ResetSuccessRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ResetSuccessScreen(),
      );
    },
    SetPasswordRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SetPasswordScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SplashScreen(),
      );
    },
    VerifyOtpRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyOtpRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.VerifyOtpScreen(
          key: args.key,
          email: args.email,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AddMemberScreen]
class AddMemberRoute extends _i18.PageRouteInfo<AddMemberRouteArgs> {
  AddMemberRoute({
    _i19.Key? key,
    _i20.FamilyMember? member,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          AddMemberRoute.name,
          args: AddMemberRouteArgs(
            key: key,
            member: member,
          ),
          initialChildren: children,
        );

  static const String name = 'AddMemberRoute';

  static const _i18.PageInfo<AddMemberRouteArgs> page =
      _i18.PageInfo<AddMemberRouteArgs>(name);
}

class AddMemberRouteArgs {
  const AddMemberRouteArgs({
    this.key,
    this.member,
  });

  final _i19.Key? key;

  final _i20.FamilyMember? member;

  @override
  String toString() {
    return 'AddMemberRouteArgs{key: $key, member: $member}';
  }
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i18.PageRouteInfo<void> {
  const AuthRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CompleteFamilyProfileScreen]
class CompleteFamilyProfileRoute
    extends _i18.PageRouteInfo<CompleteFamilyProfileRouteArgs> {
  CompleteFamilyProfileRoute({
    _i19.Key? key,
    required _i20.FamilyMember member,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          CompleteFamilyProfileRoute.name,
          args: CompleteFamilyProfileRouteArgs(
            key: key,
            member: member,
          ),
          initialChildren: children,
        );

  static const String name = 'CompleteFamilyProfileRoute';

  static const _i18.PageInfo<CompleteFamilyProfileRouteArgs> page =
      _i18.PageInfo<CompleteFamilyProfileRouteArgs>(name);
}

class CompleteFamilyProfileRouteArgs {
  const CompleteFamilyProfileRouteArgs({
    this.key,
    required this.member,
  });

  final _i19.Key? key;

  final _i20.FamilyMember member;

  @override
  String toString() {
    return 'CompleteFamilyProfileRouteArgs{key: $key, member: $member}';
  }
}

/// generated route for
/// [_i4.CompleteProfileScreen]
class CompleteProfileRoute
    extends _i18.PageRouteInfo<CompleteProfileRouteArgs> {
  CompleteProfileRoute({
    _i19.Key? key,
    required int stepsCompleted,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          CompleteProfileRoute.name,
          args: CompleteProfileRouteArgs(
            key: key,
            stepsCompleted: stepsCompleted,
          ),
          initialChildren: children,
        );

  static const String name = 'CompleteProfileRoute';

  static const _i18.PageInfo<CompleteProfileRouteArgs> page =
      _i18.PageInfo<CompleteProfileRouteArgs>(name);
}

class CompleteProfileRouteArgs {
  const CompleteProfileRouteArgs({
    this.key,
    required this.stepsCompleted,
  });

  final _i19.Key? key;

  final int stepsCompleted;

  @override
  String toString() {
    return 'CompleteProfileRouteArgs{key: $key, stepsCompleted: $stepsCompleted}';
  }
}

/// generated route for
/// [_i5.DashboardScreen]
class DashboardRoute extends _i18.PageRouteInfo<void> {
  const DashboardRoute({List<_i18.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.FamilyScreen]
class FamilyRoute extends _i18.PageRouteInfo<void> {
  const FamilyRoute({List<_i18.PageRouteInfo>? children})
      : super(
          FamilyRoute.name,
          initialChildren: children,
        );

  static const String name = 'FamilyRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i18.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomeScreen]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LanguageSelectionScreen]
class LanguageSelectionRoute extends _i18.PageRouteInfo<void> {
  const LanguageSelectionRoute({List<_i18.PageRouteInfo>? children})
      : super(
          LanguageSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageSelectionRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OnboardingScreen]
class OnboardingRoute extends _i18.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    _i19.Key? key,
    required List<_i21.OnboardingItem> items,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(
            key: key,
            items: items,
          ),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i18.PageInfo<OnboardingRouteArgs> page =
      _i18.PageInfo<OnboardingRouteArgs>(name);
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({
    this.key,
    required this.items,
  });

  final _i19.Key? key;

  final List<_i21.OnboardingItem> items;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key, items: $items}';
  }
}

/// generated route for
/// [_i11.RequestBloodScreen]
class RequestBloodRoute extends _i18.PageRouteInfo<void> {
  const RequestBloodRoute({List<_i18.PageRouteInfo>? children})
      : super(
          RequestBloodRoute.name,
          initialChildren: children,
        );

  static const String name = 'RequestBloodRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ResetSuccessScreen]
class ResetSuccessRoute extends _i18.PageRouteInfo<void> {
  const ResetSuccessRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ResetSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetSuccessRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SetPasswordScreen]
class SetPasswordRoute extends _i18.PageRouteInfo<void> {
  const SetPasswordRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'SetPasswordRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SignInScreen]
class SignInRoute extends _i18.PageRouteInfo<void> {
  const SignInRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SignUpScreen]
class SignUpRoute extends _i18.PageRouteInfo<void> {
  const SignUpRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SplashScreen]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i17.VerifyOtpScreen]
class VerifyOtpRoute extends _i18.PageRouteInfo<VerifyOtpRouteArgs> {
  VerifyOtpRoute({
    _i19.Key? key,
    required String email,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          VerifyOtpRoute.name,
          args: VerifyOtpRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerifyOtpRoute';

  static const _i18.PageInfo<VerifyOtpRouteArgs> page =
      _i18.PageInfo<VerifyOtpRouteArgs>(name);
}

class VerifyOtpRouteArgs {
  const VerifyOtpRouteArgs({
    this.key,
    required this.email,
  });

  final _i19.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerifyOtpRouteArgs{key: $key, email: $email}';
  }
}
