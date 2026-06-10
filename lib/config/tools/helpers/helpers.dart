import 'package:dio/dio.dart';
import 'package:posts_app/config/enums/data_source_enum.dart';
import 'package:posts_app/config/extensions/data_source_extension.dart';

class THelperFunctions {
  static DioException generateErrorDio(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return DioException(
          message: DataSource.CONNECT_TIMEOUT.getFailure().message,
          requestOptions: e.requestOptions,
        );
      case DioExceptionType.sendTimeout:
        return DioException(
          message: DataSource.SEND_TIMEOUT.getFailure().message,
          requestOptions: e.requestOptions,
        );
      case DioExceptionType.receiveTimeout:
        return DioException(
          message: DataSource.RECEIVE_TIMEOUT.getFailure().message,
          requestOptions: e.requestOptions,
        );
      case DioExceptionType.badResponse:
        if (e.response != null &&
            e.response?.statusCode != null &&
            e.response?.statusMessage != null) {
          return DioException(
            message: e.response?.statusMessage ?? '',
            requestOptions: e.requestOptions,
          );
        } else {
          return DioException(
            message: DataSource.DEFAULT.getFailure().message,
            requestOptions: e.requestOptions,
          );
        }
      case DioExceptionType.cancel:
        return DioException(
          message: DataSource.CANCEL.getFailure().message,
          requestOptions: e.requestOptions,
        );

      default:
        return DioException(
          message: DataSource.DEFAULT.getFailure().message,
          requestOptions: e.requestOptions,
        );
    }
  }

  static DioException genericDioException(Response response) {
    return DioException(
      error: response.statusMessage,
      response: response,
      type: DioExceptionType.badResponse,
      requestOptions: response.requestOptions,
    );
  }
}

