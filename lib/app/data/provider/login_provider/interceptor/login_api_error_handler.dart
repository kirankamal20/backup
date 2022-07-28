import 'dart:io';

import 'package:dio/dio.dart';
import 'package:let_log/let_log.dart';
import 'package:symphony_delivery_app/app/global/helper/socket_exception_dialog.dart';


void handleLoginAPIError(
    DioError err, ErrorInterceptorHandler handler, Dio dio) async {
  Logger.log(err.type);
  switch (err.type) {
    case DioErrorType.connectTimeout:
      handler.resolve(Response(
          data: 'connect timeout error', requestOptions: err.requestOptions));
      break;
    case DioErrorType.sendTimeout:
      handler.resolve(Response(
          data: 'sending data is slow', requestOptions: err.requestOptions));
      break;
    case DioErrorType.receiveTimeout:
      handler.resolve(Response(
          data: 'receiving data is slow', requestOptions: err.requestOptions));
      break;
    case DioErrorType.response:
      if (err.response!.statusCode == 404) {
        handler.resolve(Response(
           data:
                '\n server error status code: ${err.response?.statusCode}  ${err.response?.statusMessage} \n ${err.response?.data} ',
            requestOptions: RequestOptions(path: err.requestOptions.path)));
      } else {
        handler.resolve(err.response ??
            Response(
                data: 'response error', requestOptions: err.requestOptions));
      }
      break;
    case DioErrorType.cancel:
      handler.resolve(Response(
          data: 'user cancelled request', requestOptions: err.requestOptions));
      break;
    case DioErrorType.other:
      if (err.error is SocketException) {
        await socketExceptionErrorDialog(err, handler, dio);
      } else {
        handler.resolve(
            Response(data: 'other error', requestOptions: err.requestOptions));
      }
      break;
  }
}
