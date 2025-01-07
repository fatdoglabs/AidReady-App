import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/features/language/data/model/onboarding_item.dart';

import '../../../../core/services/network_service.dart';
import '../../../../core/utils/either.dart';
import '../../../../core/utils/endpoints.dart';

abstract class OnboardingRemoteDataSource {
  Future<Either<List<OnboardingItem>, AppException>> getOnboarding();
}

class OnboardingRemoteDataSourceImpl extends OnboardingRemoteDataSource {
  final NetworkService networkService;
  OnboardingRemoteDataSourceImpl(this.networkService);

  @override
  Future<Either<List<OnboardingItem>, AppException>> getOnboarding() async {
    try {
      final response = await networkService.get(eOnboarding);
      return response.fold((l) {
        final onboardingData = l.data['data'] as List<dynamic>;
        return Left(onboardingData
            .map((e) => OnboardingItem.fromJson(e as Map<String, dynamic>))
            .toList());
      }, (r) {
        return Right(r);
      });
    } on Error {
      return Right(AppException.badResponse());
    }
  }
}
