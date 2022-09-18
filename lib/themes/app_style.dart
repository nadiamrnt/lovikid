import 'package:flutter/material.dart';
import 'package:lovikid/themes/app_colors.dart';

class AppStyle {
  static TextStyle title1 = const TextStyle(fontSize: 40);
  static TextStyle title2 = const TextStyle(fontSize: 34);
  static TextStyle title3 = const TextStyle(fontSize: 30);
  static TextStyle title4 = const TextStyle(fontSize: 28);

  static TextStyle subtitle1 = const TextStyle(fontSize: 24);
  static TextStyle subtitle2 = const TextStyle(fontSize: 20);
  static TextStyle subtitle3 = const TextStyle(fontSize: 18);
  static TextStyle subtitle4 =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  static TextStyle small = const TextStyle(fontSize: 13);
  static TextStyle normalSmall = const TextStyle(fontSize: 11);
  static TextStyle superSmall = const TextStyle(fontSize: 9);

  static TextStyle headline1 = const TextStyle(
      fontSize: 34, fontWeight: FontWeight.w800, color: AppColors.primary);
  static TextStyle headline2 = const TextStyle(
      fontSize: 26, fontWeight: FontWeight.w800, color: AppColors.primary);
  static TextStyle headline3 = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.primary);
  static TextStyle headline4 = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.primary);

  static TextStyle link = const TextStyle(
      fontSize: 14,
      color: AppColors.primary,
      decoration: TextDecoration.underline);

  // Font Weight
  static FontWeight superBold = FontWeight.w600;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight mediumWeight = FontWeight.w500;
  static FontWeight regularWeight = FontWeight.w400;
}
