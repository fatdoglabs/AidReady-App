import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family_member.dart';

abstract class FamilyRepository {
  Future<Either<List<FamilyMember>, AppException>> famiyMembers();
  Future<Either<FamilyMember, AppException>> addMember(FamilyMember member);
  Future<Either<FamilyMember, AppException>> deleteMember(FamilyMember member);
  Future<Either<FamilyMember, AppException>> updateFamilyProfile(
      FamilyMember member);
}
