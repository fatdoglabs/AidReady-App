import 'dart:async';

import 'package:aid_ready/core/data/datasources/local_source.dart';
import 'package:dio/dio.dart';

import '../routes/router.dart';
import '../utils/endpoints.dart';
import 'injector.dart';

class AuthInterceptor extends InterceptorsWrapper {
  AuthInterceptor(this.localSource);

  final LocalSource localSource;
  final appRouter = getIt<AidRouter>();

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
      try {
        final refreshToken = await localSource.getRefreshToken();

        final dio = Dio(
          BaseOptions(
            baseUrl: "eBaseUrl",
            headers: {
              'Authorization': 'Bearer $refreshToken',
            },
          ),
        );
        dio.interceptors.add(
          LogInterceptor(
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            requestHeader: true,
          ),
        );
        final response = await dio.get<Map<String, dynamic>>(eRefresh);

        final String accessTokenData =
            response.data?['data']['access_token'] as String;
        final String refreshTokenData =
            response.data?['data']['refresh_token'] as String;
        await localSource.setAccessToken(accessTokenData);
        await localSource.setRefreshToken(refreshTokenData);
        err.requestOptions.headers['Authorization'] = 'Bearer $accessTokenData';
        return handler.resolve(await dio.fetch(err.requestOptions));
      } on DioException catch (e) {
        //appRouter.replaceAll([const LoginRoute()]);
        super.onError(e, handler);
      }
    }

    super.onError(err, handler);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await localSource.getAccessToken();
    if (token != null) {
      options.headers.addAll(<String, dynamic>{
        'Authorization': 'Bearer $token',
      });
    }
    handler.next(options);
  }
}
