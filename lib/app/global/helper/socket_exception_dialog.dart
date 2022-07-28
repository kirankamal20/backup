import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;

Future<void> socketExceptionErrorDialog(
  DioError err,
  ErrorInterceptorHandler handler,
  Dio dio,
) async {
  if (getx.Get.isDialogOpen!) {
    getx.Get.back();
  }
  getx.Get.defaultDialog(
      title: 'No Internet Connection',
      middleText: 'Please check your internet connection and try again',
      barrierDismissible: false,
      confirm: ElevatedButton(
        onPressed: () async {
          getx.Get.back();
          var result = await dio.request(err.requestOptions.path,
              data: err.requestOptions.data,
              options: Options(
                method: err.requestOptions.method,
                contentType: err.requestOptions.contentType,
                headers: err.requestOptions.headers,
                responseType: err.requestOptions.responseType,
                followRedirects: err.requestOptions.followRedirects,
                validateStatus: err.requestOptions.validateStatus,
                receiveDataWhenStatusError:
                    err.requestOptions.receiveDataWhenStatusError,
                extra: err.requestOptions.extra,
                responseDecoder: err.requestOptions.responseDecoder,
                listFormat: err.requestOptions.listFormat,
                maxRedirects: err.requestOptions.maxRedirects,
                receiveTimeout: err.requestOptions.receiveTimeout,
                sendTimeout: err.requestOptions.sendTimeout,
                requestEncoder: err.requestOptions.requestEncoder,
              ));
          handler.resolve(result);
        },
        child: const Text('Retry'),
      ),
      cancel: ElevatedButton(
        onPressed: () {
          getx.Get.back();
          handler.resolve(Response(
            data: 'No Internet Connection',
            requestOptions: err.requestOptions,
          ));
        },
        child: const Text('Cancel'),
      ));
}
