import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/utils/either.dart';

abstract class ProfileInfoRepository {
  Future<Either<ProfileInfo, AppException>> updatePersonalInfo(
      ProfileInfo step1);
  Future<Either<ProfileInfo, AppException>> updatePhysicalInfo(
      ProfileInfo step2);
  Future<Either<ProfileInfo, AppException>> updateMedicalInfo(
      ProfileInfo step3);
}
