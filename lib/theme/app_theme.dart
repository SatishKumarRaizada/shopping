import 'package:flutter/material.dart';
import 'package:my_shopping/theme/app_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'RobotoRegular',
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.whiteColor,
      elevation: 0.2,
      iconTheme: IconThemeData(
        color: AppColor.blackColor,
        size: 25,
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'RobotoLight',
        fontSize: 20,
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
