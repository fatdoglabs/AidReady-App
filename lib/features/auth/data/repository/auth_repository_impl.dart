import 'package:aid_ready/core/data/datasources/local_source.dart';
import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:aid_ready/features/auth/data/datasources/auth_remote_source.dart';
import 'package:aid_ready/features/auth/domain/entity/login_form_entity.dart';
import 'package:dio/dio.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/utils/either.dart';
import '../../domain/repository/auth_repository.dart';
import '../model/auth_token.dart';

class AuthRepositoryImpl extends AuthRepository {
  final NetworkStatus status;
  final AuthRemoteSource remoteDataSource;
  final LocalSource localSource;

  AuthRepositoryImpl({
    required this.status,
    required this.remoteDataSource,
    required this.localSource,
  });
  @override
  Future<Either<AuthToken, AppException>> login(
      LoginFormEntity loginData) async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.login(loginData);
      return token.fold(
        (l) {
          localSource.setAccessToken(l.accessToken);
          localSource.setRefreshToken(l.refreshToken);
          localSource.setUserId(l.userId);
          return Left(l);
        },
        (r) => Right(r),
      );
    } else {
      return Right(AppException.noInternet());
    }
  }

  @override
  Future<void> setLocale(LocaleOpts locale) async {
    await localSource.setLanguage(locale);
  }

  @override
  Future<void> onboardingComplete() async {
    await localSource.setOnboarding();
  }

  @override
  bool isLocaleSet() {
    return localSource.language != null;
  }

  @override
  bool isOnboardingComplete() {
    return localSource.isOnboardingShown();
  }

  @override
  AuthToken isUserLoggedIn() {
    return AuthToken(
        userId: localSource.getUserId() ?? -1,
        accessToken: localSource.getAccessToken() ?? "",
        refreshToken: localSource.getRefreshToken() ?? "");
  }

  @override
  Future<bool> logOut({CancelToken? token}) async {
    final result = await remoteDataSource.logout(token: token);
    return result.fold((status) async {
      await localSource.deleteAccessToken();
      await localSource.deleteRefreshToken();
      await localSource.deleteUserId();
      return status;
    }, (err) {
      throw err;
    });
  }

  @override
  Future<bool> deleteAccount({CancelToken? token}) async {
    final result = await remoteDataSource.deleteAccount(token: token);
    return result.fold((status) async {
      await localSource.deleteAccessToken();
      await localSource.deleteRefreshToken();
      await localSource.deleteUserId();
      return status;
    }, (err) {
      throw err;
    });
  }
}
