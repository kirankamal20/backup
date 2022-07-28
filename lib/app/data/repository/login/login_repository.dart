import 'package:multiple_result/multiple_result.dart';
import 'package:symphony_delivery_app/app/data/models/user_model.dart';
import 'package:symphony_delivery_app/app/data/provider/login_provider/i_login_provider_provider.dart';
import 'package:symphony_delivery_app/app/data/services/db/user_db/i_user_db_service.dart';
import 'package:symphony_delivery_app/app/global/exceptions/base_exception.dart';
import 'package:symphony_delivery_app/app/global/helper/response_format_checker.dart';

import 'i_login_repository.dart';

class LoginRepository implements ILoginRepository {
  late ILoginProvider loginProvider;
  late IUserDbService dbService;
  LoginRepository({required this.loginProvider, required this.dbService});
  @override
  Future<Result<BaseException, bool>> login(
      {required String userName,
      required String password,
      required String deviceId}) async {
    var response = await loginProvider.login(
        userName: userName, password: password, deviceId: deviceId);

    if (response.statusCode == 200) {
      if (response.isFormatValid(key: 'user_id')) {
        // UserModel userModel = UserModel.fromMap(response.data);
        UserModel userModel = UserModel(
            userId: response.data['user_id'],
            userName: userName,
            password: password,
            deviceId: deviceId);
        await dbService.saveUser(user: userModel);
        return const Success(true);
      } else {
        return Error(BaseException(message: response.getErrorMessage()));
      }
    } else {
      return Error(BaseException(message: response.getErrorMessage()));
    }
  }
}
