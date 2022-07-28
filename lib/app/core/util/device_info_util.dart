import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:let_log/let_log.dart';

Future<String> getDeviceId() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  late String deviceId;
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    androidInfo = await deviceInfo.androidInfo;
    Logger.log('Android ID: ${androidInfo.androidId} ${androidInfo.id}');
    deviceId = '${androidInfo.androidId} ${androidInfo.id}';
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    Logger.log('iOS ID: ${iosInfo.identifierForVendor}');
    deviceId = '${iosInfo.identifierForVendor}';
  }
  return deviceId;
}
