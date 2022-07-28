import 'package:multiple_result/multiple_result.dart';
abstract class ILoginRepository {
  Future<Result<Exception,bool>> login({
    required String userName,
    required String password,
    required String deviceId,
  });
}
