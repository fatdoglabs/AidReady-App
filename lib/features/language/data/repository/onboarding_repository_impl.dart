import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/features/language/data/model/onboarding_item.dart';

import '../../../../core/data/providers/connectivity_status_notifier.dart';
import '../../../../core/utils/either.dart';
import '../../domain/repository/onboarding_repository.dart';
import '../datasource/onboarding_remote_data_source.dart';

class OnboardingRepositoryImpl extends OnboardingRepository {
  final NetworkStatus status;
  final OnboardingRemoteDataSource remoteDataSource;

  OnboardingRepositoryImpl({
    required this.status,
    required this.remoteDataSource,
  });
  @override
  Future<Either<List<OnboardingItem>, AppException>> getOnboarding() async {
    if (status == NetworkStatus.isConnected) {
      final token = await remoteDataSource.getOnboarding();
      return token.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      return Right(AppException.noInternet());
    }
  }
}
