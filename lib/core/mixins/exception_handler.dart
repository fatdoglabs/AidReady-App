import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:aid_ready/core/exceptions/app_exception.dart';
import 'package:dio/dio.dart';

import '../services/network_service.dart';
import '../utils/either.dart';

mixin ExceptionHandlerMixin on NetworkService {
  Future<Either<Response, AppException>> handleException<T extends Object>(
      Future<Response<dynamic>> Function() handler,
      {String endpoint = ''}) async {
    try {
      final res = await handler();
      return Left(
        Response(
          statusCode: res.statusCode ?? 200,
          data: res.data,
          statusMessage: res.statusMessage,
          requestOptions: res.requestOptions,
        ),
      );
    } catch (e) {
      String message = '';
      String identifier = '';
      int statusCode = 0;
      log(e.runtimeType.toString());
      switch (e.runtimeType) {
        case SocketException:
          e as SocketException;
          message = 'Unable to connect to the server.';
          statusCode = 0;
          identifier = 'Socket Exception ${e.message}\n at  $endpoint';
          break;

        case DioException:
          e as DioException;
          message = e.response?.data?['error'] ?? 'Internal Error occured';
          statusCode = e.type == DioExceptionType.cancel
              ? 700
              : e.response?.data?['status'] ?? 500;
          identifier = 'DioException ${e.message} \nat  $endpoint';
          break;

        default:
          message = 'Unknown error occured';
          statusCode = 2;
          identifier = 'Unknown error ${e.toString()}\n at $endpoint';
      }
      return Right(
        AppException(
          message: message,
          statusCode: statusCode,
          identifier: identifier,
        ),
      );
    }
  }
}
