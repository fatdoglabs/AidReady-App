import 'package:aid_ready/core/data/datasources/local_source.dart';
import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/features/profile/data/datasources/profile_info_remote_data_source.dart';
import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';
import 'package:aid_ready/features/profile/domain/repository/profile_info_repository.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';

class ProfileInfoRepositoryImpl extends ProfileInfoRepository {
  final NetworkStatus status;
  final ProfileInfoRemoteSource remoteDataSource;
  final LocalSource localSource;

  ProfileInfoRepositoryImpl({
    required this.status,
    required this.remoteDataSource,
    required this.localSource,
  });

  @override
  Future<Either<ProfileInfo, AppException>> updateMedicalInfo(
      ProfileInfo step3) async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.updateMedicalInfo(step3);
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
  Future<Either<ProfileInfo, AppException>> updatePersonalInfo(
      ProfileInfo step1) async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.updatePersonalInfo(step1);
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
  Future<Either<ProfileInfo, AppException>> updatePhysicalInfo(
      ProfileInfo step2) async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.updatePhysicalInfo(step2);
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
}
