import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:let_log/let_log.dart';
import 'package:symphony_delivery_app/app/data/services/theme/i_theme_service.dart';

class ThemeService extends GetxService implements IThemeService {
  static IThemeService get to => Get.find<IThemeService>();
  final theme = ThemeData(

       appBarTheme: const AppBarTheme(
     color:Color(0xffFFFBF3),
  ),
    brightness: Brightness.light,
    primaryColor: Colors.grey[200],
    textTheme: GoogleFonts.getTextTheme(
      'Hind',
    ),
  );
  @override
  void onInit() async {
    Logger.log('ThemeService onInit');

    super.onInit();
  }

  @override
  Future<void> setTheme(ThemeData themeData) async {}

  @override
  ThemeData get getTheme => theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        secondary: Colors.cyan[600],
      ));
}
