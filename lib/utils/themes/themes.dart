import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCustomThemes {
  MyCustomThemes._();

  static const Color light_green1 = Color(0xFF99CDA9);
  static const Color light_green2 = Color(0xFFD1E9D2);
  static const Color light_green3 = Color(0xFFE5F4E7);
  static const Color light_green4 = Color(0xFFF1FDF3);

  static const Color dark_green1 = Color(0xFF013A20);
  static const Color dark_green2 = Color(0xFF478C5C);
  static const Color dark_green3 = Color(0xFFBACC81);
  static const Color dark_green4 = Color(0xFFCDD193);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    primaryColor: light_green3,
    cardColor: light_green1,
    primaryColorDark: light_green1,
    primaryColorLight: light_green2,

    scaffoldBackgroundColor: light_green4,

    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.grey),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: light_green4,
      foregroundColor: light_green1,
      // color: green4,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: light_green1,
      ),
    ),
    badgeTheme: BadgeThemeData(backgroundColor: light_green1),
    listTileTheme: ListTileThemeData(
      tileColor: light_green2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: light_green1,
      contentTextStyle: TextStyle(color: Colors.white),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(50),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: light_green1,
        elevation: 1,
      ),
    ),
  );

  ///---------------------------------------------------------------------------------------------

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    primaryColor: dark_green1,
    cardColor: dark_green2,
    primaryColorDark: dark_green2,
    primaryColorLight: dark_green3,

    scaffoldBackgroundColor: Color(0xFF013A20),

    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.grey),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: dark_green1,
      foregroundColor: dark_green2,
      // color: green4,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: dark_green2,
      ),
    ),
    badgeTheme: BadgeThemeData(backgroundColor: dark_green2),
    listTileTheme: ListTileThemeData(
      tileColor: dark_green2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: dark_green2,
      contentTextStyle: TextStyle(color: Colors.white),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(50),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: dark_green3,
        elevation: 1,
      ),
    ),
  );
}
