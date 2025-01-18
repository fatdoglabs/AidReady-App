import 'package:aid_ready/core/services/network_service.dart';
import 'package:aid_ready/features/dashboard/family/data/datasource/family_remote_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'family_remote_source_provider.g.dart';

@riverpod
FamilyRemoteSource familyRemoteSource(
        FamilyRemoteSourceRef ref, NetworkService service) =>
    FamilyRemoteSourceImpl(service);
