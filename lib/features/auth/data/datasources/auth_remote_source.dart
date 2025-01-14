import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/services/network_service.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/core/utils/endpoints.dart';
import 'package:aid_ready/features/auth/data/model/auth_token.dart';
import 'package:aid_ready/features/auth/domain/entity/auth_form_entity.dart';
import 'package:dio/dio.dart';

abstract class AuthRemoteSource {
  Future<Either<AuthToken, AppException>> login(AuthFormEntity authData);
  Future<Either<AuthToken, AppException>> register(AuthFormEntity authData);
  Future<Either<bool, AppException>> logout({CancelToken? token});
  Future<Either<bool, AppException>> deleteAccount({CancelToken? token});
}

class AuthRemoteDataSourceImpl extends AuthRemoteSource {
  final NetworkService networkService;
  AuthRemoteDataSourceImpl(this.networkService);

  @override
  Future<Either<AuthToken, AppException>> login(AuthFormEntity authData) async {
    try {
      final response =
          await networkService.post(eLogin, data: authData.toLoginJson());
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(AuthToken.fromJson(userData));
      }, (r) {
        if (r.statusCode == 422) {
          return Right(AppException.wrongCreds());
        }
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }

  @override
  Future<Either<AuthToken, AppException>> register(
      AuthFormEntity authData) async {
    try {
      final response = await networkService.post(
        eRegister,
        data: authData.toRegisterJson(),
      );
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(AuthToken.fromJson(userData));
      }, (r) {
        if (r.statusCode == 422) {
          return Right(AppException.wrongCreds());
        }
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }

  @override
  Future<Either<bool, AppException>> logout({CancelToken? token}) async {
    try {
      final response = await networkService.get(eLogout, cancelToken: token);
      return response.fold((l) {
        return const Left(true);
      }, (r) {
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }

  @override
  Future<Either<bool, AppException>> deleteAccount({CancelToken? token}) async {
    try {
      final response =
          await networkService.post(eDeleteAccount, cancelToken: token);
      return response.fold((l) {
        return const Left(true);
      }, (r) {
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }
}
