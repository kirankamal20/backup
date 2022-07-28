import 'package:dio/dio.dart';
import 'package:let_log/let_log.dart';
import 'package:symphony_delivery_app/app/data/provider/login_provider/interceptor/login_api_error_handler.dart';



class LoginInteceptor extends Interceptor {
  late Dio dio;

  LoginInteceptor({required this.dio, });
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final data = options.data;
    if (data is FormData) {
      ///print form data
      for (var item in data.fields) {
        Logger.log('${item.key} : ${item.value}');
      }
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handleLoginAPIError(err, handler, dio);
  }
}
