import 'package:aid_ready/core/data/providers/local_storage_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/network_service.dart';

final netwokServiceProvider = Provider<NetworkService>(
  (ref) {
    final Dio dio = Dio();
    return DioNetworkService(dio, ref.read(localSourceProvider));
    //return MockNetworkService(dio, ref.read(localSourceProvider));
  },
);
