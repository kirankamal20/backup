import 'package:dio/dio.dart';

abstract class ILoginProvider {
Future<Response> login({
    required String userName,
    required String password,
    required String deviceId,
  });
}
