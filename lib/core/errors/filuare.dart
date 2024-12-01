import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection Timeout With ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout With ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout With ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Receive Timeout With ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request With ApiServer Is Canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('connection Error With ApiServer');

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection ');
        }
        return ServerFailure('Unexpected Error,Please Try Aging!');
      default:
        return ServerFailure(
            'Oppose Their Was Ann Error,Please Try Aging Later!');
    }
  }
  factory ServerFailure.fromResponse(int stateCode, dynamic response) {
    if (stateCode == 400 || stateCode == 401 || stateCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (stateCode == 404) {
      return ServerFailure('Your Request Not Found,Please Try Aging Later!');
    } else if (stateCode == 500) {
      return ServerFailure('Internal Server Error,Please Try Aging Later!');
    } else {
      return ServerFailure(
          'Oppose Their Was Ann Error,Please Try Aging Later!');
    }
  }
}
