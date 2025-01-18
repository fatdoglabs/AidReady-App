import 'package:aid_ready/core/data/datasources/local_source.dart';
import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/features/dashboard/family/data/datasource/family_remote_source.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family.dart';
import 'package:aid_ready/features/dashboard/family/domain/repository/family_repository.dart';

import '../../../../../core/data/providers/connectivity_status_notifier.dart';

class FamilyRepositoryImpl extends FamilyRepository {
  final NetworkStatus status;
  final FamilyRemoteSource remoteDataSource;
  final LocalSource localSource;

  FamilyRepositoryImpl({
    required this.status,
    required this.remoteDataSource,
    required this.localSource,
  });

  @override
  Future<Either<List<Family>, AppException>> famiyMembers() async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.familyMembers();
      return token.fold(
        (l) {
          // localSource.setAccessToken(l.accessToken);
          // localSource.setRefreshToken(l.refreshToken);
          //localSource.setUserId(l.userId);
          return Left([]);
        },
        (r) => Right(r),
      );
    } else {
      return Right(AppException.noInternet());
    }
  }
}
