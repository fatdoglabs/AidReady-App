import 'package:aid_ready/core/data/datasources/local_source.dart';
import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:aid_ready/core/mixins/exception_handler.dart';
import 'package:aid_ready/core/services/auth_interceptor.dart';
import 'package:aid_ready/core/utils/either.dart';
import 'package:aid_ready/core/utils/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  void updateHeader(Map<String, dynamic> data);

  Future<Either<Response, AppException>> get(String endpoint,
      {Map<String, dynamic>? queryParameters, CancelToken? cancelToken});

  Future<Either<Response, AppException>> getUri(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<Either<Response, AppException>> post(String endpoint,
      {Map<String, dynamic>? data, CancelToken? cancelToken});
  Future<Either<Response, AppException>> postForm(
    String endpoint, {
    Object? data,
  });
  Future<Either<Response, AppException>> delete(
    String endpoint,
  );
}

class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  final Dio dio;
  final LocalSource localSource;

  DioNetworkService(this.dio, this.localSource) {
    dio.options = dioBaseOptions;
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          requestHeader: true));
    }
    dio.interceptors.addAll([
      AuthInterceptor(localSource),
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final locale = await localSource.language;
          options.headers.addAll(
            <String, dynamic>{
              'X-localization': locale.value,
            },
          );
          handler.next(options);
        },
      ),
    ]);
  }

  BaseOptions get dioBaseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
      );
  @override
  String get baseUrl => eBaseUrl;

  @override
  Map<String, Object> get headers => {
        'accept': 'application/json',
        'content-type': 'application/json',
      };

  @override
  Map<String, dynamic>? updateHeader(Map<String, dynamic> data) {
    final header = {...data, ...headers};
    dio.options.headers = header;
    return header;
  }

  @override
  Future<Either<Response, AppException>> post(String endpoint,
      {Map<String, dynamic>? data, CancelToken? cancelToken}) {
    final res = handleException(
      () => dio.post(
        endpoint,
        data: data,
        cancelToken: cancelToken,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<Response, AppException>> getUri(String uri,
      {Map<String, dynamic>? queryParameters, Options? options}) {
    final res = handleException(
      () => dio.getUri(
        Uri.parse(uri),
        options: options,
      ),
    );
    return res;
  }

  @override
  Future<Either<Response, AppException>> delete(String endpoint) {
    final res = handleException(
      () => dio.delete(
        endpoint,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<Response, AppException>> postForm(String endpoint,
      {Object? data}) {
    final res = handleException(
      () => dio.post(
        endpoint,
        data: data,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<Response, AppException>> get(String endpoint,
      {Map<String, dynamic>? queryParameters, CancelToken? cancelToken}) {
    final res = handleException(
      () => dio.get(endpoint,
          queryParameters: queryParameters, cancelToken: cancelToken),
      endpoint: endpoint,
    );
    return res;
  }
}
