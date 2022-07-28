import 'package:dio/dio.dart';
import 'package:symphony_delivery_app/app/data/consts/api_provider_const.dart';
import 'package:symphony_delivery_app/app/data/consts/app_urls.dart';

Dio getDIO() {
  final dio = Dio();
  dio.options.baseUrl = AppURLs.baseUrl;
  dio.options.connectTimeout = APIProviderConst.connectTimeout;
  dio.options.receiveTimeout = APIProviderConst.receiveTimeout;
  return dio;
}
