import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:let_log/let_log.dart';
 import 'package:symphony_delivery_app/app/data/consts/app_urls.dart';
import 'package:symphony_delivery_app/app/data/consts/dio_client.dart';
import 'package:symphony_delivery_app/app/data/provider/login_provider/interceptor/login_interceptor.dart';
import 'package:symphony_delivery_app/app/global/helper/bad_certificate_fixer.dart';

import 'i_login_provider_provider.dart';

class LoginProvider implements ILoginProvider {
  late Dio dio;
  LoginProvider() {
    dio = getDIO();

    if (!kReleaseMode) {
      dio.interceptors.add(dioLoggerInterceptor);
    }
    dio.interceptors.addAll([
      RetryInterceptor(
          dio: dio,
          logPrint: Logger.log, // specify log function (optional)
          // retry count (optional)
          retries: 2,
          retryDelays: [
            const Duration(seconds: 1),
            const Duration(seconds: 2),
            const Duration(seconds: 3),
          ],
          retryEvaluator: (error, i) {
            // only retry on DioError
            if (error.type == DioErrorType.other &&
                error.error is SocketException) {
              // only retry on timeout error
              return true;
            } else {
              return false;
            }
          }),
      LoginInteceptor(
        dio: dio,
      ),
    ]);
    fixBadCertificate(dio: dio);
  }

  @override
  Future<Response> login(
      {required String userName,
      required String password,
      required String deviceId}) {
    return dio.post(
      AppURLs.loginUrl,
      data: {
        "username": userName,
        "password": password,
        "androidId": deviceId,
      },
    );
  }
}
