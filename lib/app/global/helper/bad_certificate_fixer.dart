import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:get/get_utils/src/platform/platform.dart';

void fixBadCertificate({required Dio dio}) {
  (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
      (client) {
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) {
      return GetPlatform.isAndroid;
    };
    return client;
  };
}
