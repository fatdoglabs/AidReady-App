import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../utils/either.dart';
import '../utils/identifier.dart';

class AppException implements Exception {
  final String? message;
  final int? statusCode;
  final String? identifier;

  AppException({
    required this.message,
    required this.statusCode,
    required this.identifier,
  });
  @override
  String toString() {
    return 'statusCode=$statusCode\nmessage=$message\nidentifier=$identifier';
  }

  factory AppException.noInternet() => AppException(
        message: 'Please check your internet connection.',
        statusCode: no_internet_code,
        identifier: nointernet,
      );

  factory AppException.unknown() => AppException(
        message: 'Something went wrong. Please try again later.',
        statusCode: unknownerr_code,
        identifier: unknownerr,
      );

  factory AppException.badResponse() => AppException(
        message: 'Something went wrong. Please try again later.',
        statusCode: unknownerr_code,
        identifier: deverr,
      );

  factory AppException.cancelled() => AppException(
        message: 'Request cancelled by the user.',
        statusCode: cancel_code,
        identifier: unknownerr,
      );

  factory AppException.invalid() => AppException(
        message: '',
        statusCode: form_invalid_code,
        identifier: usererr,
      );

  factory AppException.wrongCreds() => AppException(
        message: 'Invalid enrollement Id or password.',
        statusCode: form_invalid_code,
        identifier: usererr,
      );
}

class CacheFailureException extends Equatable implements AppException {
  @override
  String? get identifier => 'Cache failure exception';

  @override
  String? get message => 'Unable to save user';

  @override
  int? get statusCode => 100;

  @override
  List<Object?> get props => [message, statusCode, identifier];
}

//  extension

extension AppExceptionExtension on AppException {
  Left<AppException, Response> get toLeft => Left<AppException, Response>(this);
}
