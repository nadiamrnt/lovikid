import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lovikid/themes/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: AppColors.materialPrimary,
  primarySwatch: AppColors.materialPrimary,
  indicatorColor: AppColors.accent,
  toggleableActiveColor: AppColors.onPrimary,
  disabledColor: AppColors.primaryDisable,
  fontFamily: "Poppins",
  brightness: Brightness.light,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2, color: Colors.blue),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2, color: Colors.blue),
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
      statusBarColor: AppColors.primary,
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  primaryColor: AppColors.materialPrimary,
  primarySwatch: AppColors.materialPrimary,
  indicatorColor: AppColors.accent,
  toggleableActiveColor: AppColors.onPrimary,
  disabledColor: AppColors.primaryDisable,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.onPrimary),
  fontFamily: "Poppins",
  brightness: Brightness.dark,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Colors.grey),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2, color: Colors.blue),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2, color: Colors.blue),
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      statusBarColor: AppColors.primary,
    ),
  ),
);

extension DarkMode on BuildContext {
  bool isDarkMode() {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}

class AppStatusBar {
  static set({
    required Brightness brightness,
    Color color = AppColors.primaryVariant,
  }) {
    Brightness _iconBrightness;
    if (Platform.isIOS) {
      (brightness == Brightness.dark)
          ? _iconBrightness = Brightness.light
          : _iconBrightness = Brightness.dark;
    } else {
      _iconBrightness = brightness;
    }
    return SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: _iconBrightness,
        statusBarColor: color,
      ),
    );
  }
}

class AppOrientation {
  static lock(DeviceOrientation orientation) {
    return SystemChrome.setPreferredOrientations([
      orientation,
    ]);
  }
}
