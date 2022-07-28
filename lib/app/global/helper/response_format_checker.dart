import 'package:dio/dio.dart';
import 'package:let_log/let_log.dart';

extension ResponseFormatChecker on Response {
  bool isFormatValid({String? key}) {
    if (statusCode == 200 &&
        (data['status'] != null &&
            data['status'] is String &&
            (data['status'] == '200' || data['status'] == '201')) &&
        (key != null
            ? ((data as Map).containsKey(key) && (data as Map)[key] != null)
            : true)) {
      Logger.log('valid response');
      return true;
    } else {
      Logger.log('invalid response $data $realUri');
      return false;
    }
  }

  String getErrorMessage() {
    if (data != null && data is Map && (data['message'] != null)) {
      return data['message'];
    } else {
      return data.toString();
    }
  }
}
