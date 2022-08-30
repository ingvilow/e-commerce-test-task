import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// класс для устанвки темы в приложении
class AppTheme {
  static const appBarTheme = AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ),
  );

  static ThemeData get defaultTheme => ThemeData(
        backgroundColor: Colors.white,
        appBarTheme: appBarTheme,
        scaffoldBackgroundColor: Colors.white,
      );
}
