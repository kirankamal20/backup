import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:get/get.dart';
import 'package:let_log/let_log.dart';
import 'package:symphony_delivery_app/app/data/services/db/user_db/i_user_db_service.dart';
import 'package:symphony_delivery_app/app/data/services/theme/i_theme_service.dart';
import 'package:symphony_delivery_app/app/data/services/theme/theme_service.dart';

import 'app/data/services/db/user_db/user_db_service.dart';

Future<void> init() async {
  configLogger();
  await initialBindings();
  await FlutterDisplayMode.setHighRefreshRate();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

//Initialize the bindings
Future<void> initialBindings() async {
  await Get.putAsync<IUserDbService>(() async => await UserDbService().init());
  Get.put<IThemeService>(ThemeService());
  initializeNotificationBinding();
}

Future<void> initializeNotificationBinding() async {}

///Configure the logger
void configLogger() {
  // Logger.enabled = true;
  Logger.enabled = !kReleaseMode;
  Logger.config.maxLimit = 10000;
  Logger.config.reverse = false;
  Logger.config.printLog = true;
  Logger.config.printNet = true;

  Logger.config.setPrintNames(
    log: '[😄Log]',
    debug: '[🐛Debug]',
    warn: '[❗Warn]',
    error: '[❌Error]',
    request: '[⬆️Req]',
    response: '[⬇️Res]',
  );

  Logger.config.setTabNames(
    log: '😄',
    debug: '🐛',
    warn: '❗',
    error: '❌',
    request: '⬆️',
    response: '⬇️',
  );
}
