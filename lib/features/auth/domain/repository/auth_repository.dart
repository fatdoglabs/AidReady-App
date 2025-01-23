import 'package:aid_ready/features/auth/data/model/otp_token.dart';
import 'package:dio/dio.dart';

import '../../../../core/domain/entity/locale_option.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/utils/either.dart';
import '../../data/model/auth_token.dart';
import '../entity/auth_form_entity.dart';

abstract class AuthRepository {
  Future<Either<AuthToken, AppException>> login(AuthFormEntity authData);
  Future<Either<OtpToken, AppException>> signUp(AuthFormEntity authData);
  Future<Either<OtpToken, AppException>> social(AuthFormEntity authData);
  Future<Either<AuthToken, AppException>> reset(AuthFormEntity authData);
  Future<Either<AuthToken, AppException>> setPassword(AuthFormEntity authData);
  Future<Either<OtpToken, AppException>> verify(AuthFormEntity authData);
  Future<Either<OtpToken, AppException>> resend(AuthFormEntity authData);
  Future<Either<AuthToken, AppException>> googleLogin();
  Future<Either<AuthToken, AppException>> facebookLogin();
  Future<void> setLocale(LocaleOpts locale);
  Future<void> onboardingComplete();
  AuthToken isUserLoggedIn();
  bool isLocaleSet();
  bool isOnboardingComplete();
  Future<bool> logOut({CancelToken? token});
  Future<bool> deleteAccount({CancelToken? token});
}
