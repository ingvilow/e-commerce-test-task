import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_task/theme/colors.dart';

/// класс для устанвки темы в приложении
class AppTheme {
  static const appBarTheme = AppBarTheme(
    backgroundColor: ColorsApp.backgroundColorApp,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ),
  );

  static ThemeData get defaultTheme => ThemeData(
        backgroundColor: ColorsApp.backgroundColorApp,
        appBarTheme: appBarTheme,
        scaffoldBackgroundColor: ColorsApp.backgroundColorApp,
      );
}
