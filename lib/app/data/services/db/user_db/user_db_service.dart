import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:symphony_delivery_app/app/data/models/user_model.dart';
import 'package:multiple_result/multiple_result.dart';
import 'i_user_db_service.dart';

class UserDbService extends GetxService implements IUserDbService {
  static String boxName = 'myUserBox';
  static String userKey = 'myUserKey';
  late Box box;

  @override
  void onInit() async {
    init();
    super.onInit();
  }

  Future<UserDbService> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox(boxName);
    return this;
  }

  @override
  Future<void> deleteUser() async {
    box.delete(userKey);
  }

  @override
  Future<Result<Exception, UserModel>> getUser() async {
    var user = box.get(userKey);
    print(user);
    if (user != null) {
      return Success(UserModel.fromJson(user));
    } else {
      return Error(Exception('User not found'));
    }
  }

  @override
  Future<Result<Exception, bool>> isUserAvailable() async {
    return Success(box.containsKey(userKey));
  }

  @override
  Future<Result<Exception, UserModel>> saveUser(
      {required UserModel user}) async {
    var userbox = await Hive.openBox(userKey);
    print("User details is : ${user.toString()}");
    userbox.put(userKey, user.toJson());
    return Success(user);
  }

  @override
  Future<Result<Exception, bool>> updateUser({required UserModel user}) async {
    box.put(userKey, user);
    return const Success(true);
  }
}
