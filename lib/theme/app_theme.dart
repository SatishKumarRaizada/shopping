import 'package:flutter/material.dart';
import 'package:my_shopping/theme/app_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'RobotoRegular',
    brightness: Brightness.light,
    primarySwatch: AppColor.appSwatchColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.whiteColor,
      elevation: 0.2,
      centerTitle: false,
      iconTheme: IconThemeData(
        color: AppColor.blackColor,
        size: 25,
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'RobotoLight',
        fontSize: 20,
        color: AppColor.blackColor,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.blackColor,
        enableFeedback: true,
        disabledBackgroundColor: AppColor.blackLightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: const TextStyle(
          color: AppColor.whiteColor,
          fontSize: 16,
          fontFamily: 'RobotoRegular',
        ),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 5.0,
      enableFeedback: true,
      selectedItemColor: AppColor.blackColor,
      unselectedItemColor: AppColor.blackLightColor,
      selectedIconTheme: IconThemeData(
        color: AppColor.blackColor,
        size: 25,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColor.blackLightColor,
        size: 25,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'RobotoLight',
        color: AppColor.blackLightColor,
        fontSize: 14,
      ),
      selectedLabelStyle: TextStyle(
        fontFamily: 'RobotoRegular',
        color: AppColor.blackColor,
        fontSize: 16,
      ),
    ),
  );
}
