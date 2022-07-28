import 'package:multiple_result/multiple_result.dart';
import 'package:symphony_delivery_app/app/data/models/user_model.dart';

abstract class IUserDbService {
  Future<Result<Exception, UserModel>> saveUser({required UserModel user});
  Future<Result<Exception, UserModel>> getUser();
  Future<Result<Exception, bool>> isUserAvailable();
  Future<void> deleteUser();
  Future<Result<Exception, bool>> updateUser({required UserModel user});
}
