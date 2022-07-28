import 'package:flutter/material.dart';

abstract class IThemeService {
  ThemeData get getTheme;
  Future<void> setTheme(ThemeData theme);
}
