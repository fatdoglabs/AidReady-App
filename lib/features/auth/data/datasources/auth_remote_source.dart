import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/services/network_service.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/core/utils/endpoints.dart';
import 'package:aid_ready/core/utils/identifier.dart';
import 'package:aid_ready/features/auth/data/model/auth_token.dart';
import 'package:aid_ready/features/auth/data/model/otp_token.dart';
import 'package:aid_ready/features/auth/domain/entity/auth_form_entity.dart';
import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';
import 'package:dio/dio.dart';

abstract class AuthRemoteSource {
  Future<Either<AuthToken, AppException>> login(AuthFormEntity authData);
  Future<Either<OtpToken, AppException>> register(AuthFormEntity authData);
  Future<Either<OtpToken, AppException>> social(
      AuthFormEntity authData, ProfileInfo info);
  Future<Either<AuthToken, AppException>> reset(AuthFormEntity authData);
  Future<Either<AuthToken, AppException>> setPassword(AuthFormEntity authData);
  Future<Either<OtpToken, AppException>> verify(AuthFormEntity authData);
  Future<Either<OtpToken, AppException>> resend(AuthFormEntity authData);
  Future<Either<bool, AppException>> logout({CancelToken? token});
  Future<Either<bool, AppException>> deleteAccount({CancelToken? token});
  Future<Either<bool, AppException>> getGoogleProfileInformation(
      String authHeader);
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
          return Right(AppException.badResponse());
        }
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }

  @override
  Future<Either<OtpToken, AppException>> register(
      AuthFormEntity authData) async {
    try {
      final response = await networkService.post(
        eRegister,
        data: authData.toRegisterJson(),
      );
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(OtpToken.fromJson(userData));
      }, (r) {
        if (r.statusCode == 422) {
          return Right(AppException.emailExists());
        }
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }

  @override
  Future<Either<OtpToken, AppException>> social(
      AuthFormEntity authData, ProfileInfo info) async {
    try {
      Map<String, dynamic> data = authData.toSocialJson();
      data.addAll(info.toJson());
      final response = await networkService.post(
        eSocial,
        data: data,
      );
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(OtpToken.fromJson(userData));
      }, (r) {
        if (r.statusCode == 422) {
          return Right(AppException.emailExists());
        }
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }

  @override
  Future<Either<AuthToken, AppException>> reset(AuthFormEntity authData) async {
    try {
      final response = await networkService.post(
        eForget,
        data: authData.toRegisterJson(),
      );
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(AuthToken.fromJson(userData));
      }, (r) {
        if (r.statusCode == 422) {
          return Right(AppException.badResponse());
        }
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }

  @override
  Future<Either<OtpToken, AppException>> verify(AuthFormEntity authData) async {
    try {
      final response = await networkService.post(
        eVerify,
        data: authData.toVerifyJson(),
      );
      return response.fold((l) {
        Map<String, dynamic> userData = l.data['data'] as Map<String, dynamic>;
        userData["otp"] = authData.pin;
        return Left(OtpToken.fromJson(userData));
      }, (r) {
        if (r.statusCode == 422) {
          return Right(AppException(
              message: r.message,
              statusCode: r.statusCode,
              identifier: usererr));
        }
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }

  @override
  Future<Either<OtpToken, AppException>> resend(AuthFormEntity authData) async {
    try {
      final response = await networkService.post(
        eResend,
        data: authData.toRegisterJson(),
      );
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(OtpToken.fromJson(userData));
      }, (r) {
        if (r.statusCode == 422) {
          return Right(AppException.badResponse());
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

  @override
  Future<Either<AuthToken, AppException>> setPassword(
      AuthFormEntity authData) async {
    try {
      final response = await networkService.post(
        eSetPassword,
        data: authData.toSetPasswordJson(),
      );
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(AuthToken.fromJson(userData));
      }, (r) {
        if (r.statusCode == 422) {
          return Right(AppException.badResponse());
        }
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }

  @override
  Future<Either<bool, AppException>> getGoogleProfileInformation(
      String authHeader) async {
    try {
      final response = await networkService.getUri(
        eGoogleProfile,
        options: Options(
          headers: {
            "Authorization": authHeader,
          },
        ),
      );
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(true);
      }, (r) {
        if (r.statusCode == 422) {
          return Right(AppException.badResponse());
        }
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }
}
