import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/services/network_service.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/core/utils/endpoints.dart';
import 'package:aid_ready/features/profile/domain/entity/profile_info.dart';

abstract class ProfileInfoRemoteSource {
  Future<Either<ProfileInfo, AppException>> updatePersonalInfo(
      ProfileInfo step3);
  Future<Either<ProfileInfo, AppException>> updatePhysicalInfo(
      ProfileInfo step2);
  Future<Either<ProfileInfo, AppException>> updateMedicalInfo(
      ProfileInfo step3);
  Future<Either<ProfileInfo, AppException>> updateFamilyProfile(
      ProfileInfo familyProfile);
}

class ProfileInfoRemoteSourceImpl extends ProfileInfoRemoteSource {
  final NetworkService networkService;
  ProfileInfoRemoteSourceImpl(this.networkService);

  @override
  Future<Either<ProfileInfo, AppException>> updateMedicalInfo(
      ProfileInfo step3) async {
    try {
      final response =
          await networkService.post(eMedicalInfo, data: step3.toMedicalJson());
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(ProfileInfo.fromJson(userData));
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
  Future<Either<ProfileInfo, AppException>> updatePersonalInfo(
      ProfileInfo step1) async {
    try {
      if (step1.image!.startsWith("http")) {
        //this block can be triggered when the user tries to redit the personal info page. since the image has already
        //been uploaded, no need to call api again.
        return Left(step1);
      }
      final response = await networkService.postForm(
        ePersonalInfo,
        data: await step1.toPersonalJson(),
      );
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(ProfileInfo.fromJson(userData));
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
  Future<Either<ProfileInfo, AppException>> updatePhysicalInfo(
      ProfileInfo step2) async {
    try {
      final response = await networkService.post(ePhysicalInfo,
          data: step2.toPhysicalJson());
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(ProfileInfo.fromJson(userData));
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
  Future<Either<ProfileInfo, AppException>> updateFamilyProfile(
      ProfileInfo familyProfile) async {
    try {
      final response = await networkService.post(eFamilyProfileInfo,
          data: familyProfile.toUpdateProfileJson());
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(ProfileInfo.fromJson(userData));
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
