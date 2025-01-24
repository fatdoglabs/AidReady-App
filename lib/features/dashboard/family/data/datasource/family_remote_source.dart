import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/services/network_service.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/core/utils/endpoints.dart';

import '../../domain/entity/family_member.dart';

abstract class FamilyRemoteSource {
  Future<Either<List<FamilyMember>, AppException>> familyMembers();
  Future<Either<FamilyMember, AppException>> addMember(FamilyMember member);
  Future<Either<FamilyMember, AppException>> deleteMember(FamilyMember member);
  Future<Either<FamilyMember, AppException>> updateFamilyProfile(
      FamilyMember member);
}

class FamilyRemoteSourceImpl extends FamilyRemoteSource {
  final NetworkService networkService;
  FamilyRemoteSourceImpl(this.networkService);

  @override
  Future<Either<List<FamilyMember>, AppException>> familyMembers() async {
    try {
      final response = await networkService.get(eFamilyList);
      return response.fold((l) {
        final list = l.data['data'] as List<dynamic>? ?? [];
        return Left(list.map((e) => FamilyMember.fromJson(e)).toList());
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
  Future<Either<FamilyMember, AppException>> addMember(
      FamilyMember member) async {
    try {
      final response = await networkService.postForm(eAddMember,
          data: await member.toForm());
      return response.fold((l) {
        final data = l.data['data'] as Map<String, dynamic>? ?? {};
        return Left(FamilyMember.fromJson(data));
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
  Future<Either<FamilyMember, AppException>> deleteMember(
      FamilyMember member) async {
    try {
      final response =
          await networkService.post(eDeleteMember, data: member.toIdJson());
      return response.fold((l) {
        final data = l.data['data'] as Map<String, dynamic>? ?? {};
        return Left(FamilyMember.fromJson(data));
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
  Future<Either<FamilyMember, AppException>> updateFamilyProfile(
      FamilyMember member) async {
    try {
      final response = await networkService.post(eFamilyProfileInfo,
          data: member.toUpdateProfileJson());
      return response.fold((l) {
        final userData = l.data['data'] as Map<String, dynamic>;
        return Left(FamilyMember.fromJson(userData));
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
