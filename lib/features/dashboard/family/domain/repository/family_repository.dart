import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/features/dashboard/family/domain/entity/family.dart';

abstract class FamilyRepository {
  Future<Either<List<Family>, AppException>> famiyMembers();
}
