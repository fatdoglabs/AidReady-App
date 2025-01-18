import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/services/network_service.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/core/utils/endpoints.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family.dart';

abstract class FamilyRemoteSource {
  Future<Either<List<Family>, AppException>> familyMembers();
}

class FamilyRemoteSourceImpl extends FamilyRemoteSource {
  final NetworkService networkService;
  FamilyRemoteSourceImpl(this.networkService);

  @override
  Future<Either<List<Family>, AppException>> familyMembers() async {
    try {
      final response = await networkService.get(eFamilyList);
      return response.fold((l) {
        final list = l.data['data'] as List<dynamic>? ?? [];
        return Left(list.map((e) => Family.fromJson(e)).toList());
      }, (r) {
        if (r.statusCode == 422) {
          return Right(AppException.wrongCreds());
        }
        return Right(r);
      });
    } on Error catch (_) {
      return Right(AppException.badResponse());
    }
  }
}
