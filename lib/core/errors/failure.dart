import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with API server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with API server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with API server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response?.statusCode,
          dioError.response?.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request to API server was cancelled');

      case DioExceptionType.unknown:
        if (dioError.error != null &&
            dioError.error.toString().contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected error, please try again!');

      default:
        return ServerFailure('Oops, there was an error. Please try again!');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      final message = response is Map<String, dynamic>
          ? response['error']['message']
          : 'Unknown error';
      return ServerFailure(message);
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try later');
    } else {
      return ServerFailure('Oops, there was an error. Please try again!');
    }
  }
}
