import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/services/network_service.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/core/utils/endpoints.dart';

import '../../domain/entity/family_member.dart';

abstract class FamilyRemoteSource {
  Future<Either<List<FamilyMember>, AppException>> familyMembers();
  Future<Either<bool, AppException>> addMember(FamilyMember member);
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
  Future<Either<bool, AppException>> addMember(FamilyMember member) async {
    try {
      final response = await networkService.get(eAddMember);
      return response.fold((l) {
        final list = l.data['data'] as List<dynamic>? ?? [];
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
