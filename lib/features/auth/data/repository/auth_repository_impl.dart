import 'package:aid_ready/core/data/datasources/local_source.dart';
import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:aid_ready/core/services/injector.dart';
import 'package:aid_ready/features/auth/data/datasources/auth_remote_source.dart';
import 'package:aid_ready/features/auth/data/model/otp_token.dart';
import 'package:aid_ready/features/auth/domain/entity/auth_form_entity.dart';
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
      AuthFormEntity loginData) async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.login(loginData);
      return token.fold(
        (l) {
          localSource.setAccessToken(l.accessToken);
          localSource.setRefreshToken(l.refreshToken);
          //localSource.setUserId(l.userId);
          return Left(l);
        },
        (r) => Right(r),
      );
    } else {
      return Right(AppException.noInternet());
    }
  }

  @override
  Future<Either<AuthToken, AppException>> signUp(
      AuthFormEntity authData) async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.register(authData);
      return token.fold(
        (l) {
          localSource.setAccessToken(l.accessToken);
          localSource.setRefreshToken(l.refreshToken);
          //localSource.setUserId(l.userId);
          return Left(l);
        },
        (r) => Right(r),
      );
    } else {
      return Right(AppException.noInternet());
    }
  }

  @override
  Future<Either<AuthToken, AppException>> reset(AuthFormEntity authData) async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.reset(authData);
      return token.fold(
        (l) {
          localSource.setAccessToken(l.accessToken);
          localSource.setRefreshToken(l.refreshToken);
          //localSource.setUserId(l.userId);
          return Left(l);
        },
        (r) => Right(r),
      );
    } else {
      return Right(AppException.noInternet());
    }
  }

  @override
  Future<Either<OtpToken, AppException>> verify(AuthFormEntity authData) async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.verify(authData);
      return token.fold(
        (l) {
          //localSource.setAccessToken(l.accessToken);
          //localSource.setRefreshToken(l.refreshToken);
          //localSource.setUserId(l.userId);
          return Left(l);
        },
        (r) => Right(r),
      );
    } else {
      return Right(AppException.noInternet());
    }
  }

  @override
  Future<Either<OtpToken, AppException>> resend(AuthFormEntity authData) async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.resend(authData);
      return token.fold(
        (l) {
          //localSource.setAccessToken(l.accessToken);
          //localSource.setRefreshToken(l.refreshToken);
          //localSource.setUserId(l.userId);
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
        email: "",
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

  @override
  Future<Either<AuthToken, AppException>> facebookLogin() async {
    throw Error();
    // if (status == NetworkStatus.isConnected) {
    //   final token = await remoteDataSource.login();
    //   return token.fold(
    //     (l) {
    //       localSource.setAccessToken(l.accessToken);
    //       localSource.setRefreshToken(l.refreshToken);
    //       localSource.setUserId(l.userId);
    //       return Left(l);
    //     },
    //     (r) => Right(r),
    //   );
    // } else {
    //   return Right(AppException.noInternet());
    // }
  }

  @override
  Future<Either<AuthToken, AppException>> googleLogin() async {
    if (status == NetworkStatus.isConnected) {
      try {
        final googleSignIn = getIt<GoogleSignIn>();
        final token = await googleSignIn.signIn();
        if (token != null) {
          final auth = await token.authentication;
          localSource.setAccessToken(auth.accessToken ?? "");

          // localSource.setUserId(l.userId);
          // return Left(l);
        }
      } catch (except) {
        return Right(AppException.noInternet());
      }
      return Left(AuthToken.unauthenticated());
    } else {
      return Right(AppException.noInternet());
    }
  }
}
