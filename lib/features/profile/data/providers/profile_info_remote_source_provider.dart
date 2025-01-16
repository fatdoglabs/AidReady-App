import 'package:aid_ready/features/profile/data/datasources/profile_info_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/network_service.dart';

part 'profile_info_remote_source_provider.g.dart';

@riverpod
ProfileInfoRemoteSource profileInfoRemoteSource(
        ProfileInfoRemoteSourceRef ref, NetworkService service) =>
    ProfileInfoRemoteSourceImpl(service);
