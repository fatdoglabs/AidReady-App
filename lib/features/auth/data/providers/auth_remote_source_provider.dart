import 'package:aid_ready/features/auth/data/datasources/auth_remote_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/services/network_service.dart';

part 'auth_remote_source_provider.g.dart';

@riverpod
AuthRemoteSource authRemoteDataSource(
        AuthRemoteDataSourceRef ref, NetworkService service) =>
    AuthRemoteDataSourceImpl(service);
