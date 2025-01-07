import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/features/language/data/model/onboarding_item.dart';

abstract class OnboardingRepository {
  Future<Either<List<OnboardingItem>, AppException>> getOnboarding();
}
