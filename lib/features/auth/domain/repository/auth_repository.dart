import 'package:dio/dio.dart';

import '../../../../core/domain/entity/locale_option.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/utils/either.dart';
import '../../data/model/auth_token.dart';
import '../entity/login_form_entity.dart';

abstract class AuthRepository {
  Future<Either<AuthToken, AppException>> login(LoginFormEntity loginData);
  Future<void> setLocale(LocaleOpts locale);
  Future<void> onboardingComplete();
  AuthToken isUserLoggedIn();
  bool isLocaleSet();
  bool isOnboardingComplete();
  Future<bool> logOut({CancelToken? token});
  Future<bool> deleteAccount({CancelToken? token});
}
