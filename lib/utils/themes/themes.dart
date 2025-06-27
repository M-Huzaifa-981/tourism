import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCustomThemes {
  MyCustomThemes._();

  static const Color light_green1 = Color(0xFF67AE6E);

  static const Color light_green2 = Color(0xFFD1E9D2);
  static const Color light_green_color = Color(0xFFD1E9D2);
  static const Color light_green3 = Color(0xFFE5F4E7);
  static const Color light_green4 = Color(0xFFF1FDF3);
  static const Color buttonColor = Color(0xFF88c425);

  static const Color dark_green1 = Color(0xFF013A20);
  static const Color dark_green2 = Color(0xFF478C5C);

  static const Color dark_green3 = Color(0xFFBACC81);
  static const Color dark_green4 = Color(0xFFCDD193);




  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,

    primaryColor: light_green1,

    cardColor: light_green2,
    textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),

    primaryColorDark: dark_green1,
    primaryColorLight: light_green1,

    scaffoldBackgroundColor: light_green4,
    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.grey),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: light_green4,
      foregroundColor: Colors.black,
      // color: green4,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // systemNavigationBarColor: light_green1,
      ),
    ),
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
    ),
    // badgeTheme: BadgeThemeData(backgroundColor: light_green1),
    // listTileTheme: ListTileThemeData(
    //   tileColor: light_green2,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(12),
    //   ),
    // ),
    // snackBarTheme: SnackBarThemeData(
    //   backgroundColor: light_green1,
    //   contentTextStyle: TextStyle(color: Colors.white),
    //   behavior: SnackBarBehavior.floating,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(50),
    //   ),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: buttonColor,
    //     elevation: 1,
    //   ),
    // ),
  );

  ///---------------------------------------------------------------------------------------------

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    primaryColor: light_green1,

    cardColor: dark_green2,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.white),
      // bodySmall: TextStyle(color: Colors.blue),
      // headlineLarge: TextStyle(color: Colors.blue),
      // headlineMedium: TextStyle(color: Colors.blue),
      // headlineSmall: TextStyle(color: Colors.blue),
      // displayLarge: TextStyle(color: Colors.blue),
      // displayMedium: TextStyle(color: Colors.blue),
      // displaySmall: TextStyle(color: Colors.blue),
      // labelLarge: TextStyle(color: Colors.blue),
      // labelMedium: TextStyle(color: Colors.blue),
      // labelSmall: TextStyle(color: Colors.blue),
      // titleLarge: TextStyle(color: Colors.blue),
      // titleMedium: TextStyle(color: Colors.blue),
      // titleSmall: TextStyle(color: Colors.blue),
    ),

    primaryColorDark: dark_green3,
    primaryColorLight: light_green1,

    scaffoldBackgroundColor: dark_green1,
    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.grey),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: dark_green1,
      foregroundColor: Colors.white,
      // color: green4,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // systemNavigationBarColor: light_green1,
      ),
    ),
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
    ),
    // primaryColor: dark_green1,
    // cardColor: dark_green2,
    // primaryColorDark: dark_green2,
    // primaryColorLight: dark_green3,
    //
    // scaffoldBackgroundColor: Color(0xFF013A20),
    //
    // textButtonTheme: TextButtonThemeData(
    //   style: ElevatedButton.styleFrom(foregroundColor: Colors.grey),
    // ),
    // appBarTheme: AppBarTheme(
    //   backgroundColor: dark_green1,
    //   foregroundColor: dark_green2,
    //   // color: green4,
    //   centerTitle: true,
    //   systemOverlayStyle: SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     systemNavigationBarColor: dark_green2,
    //   ),
    // ),
    // badgeTheme: BadgeThemeData(backgroundColor: dark_green2),
    // listTileTheme: ListTileThemeData(
    //   tileColor: dark_green2,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(12),
    //   ),
    // ),
    // snackBarTheme: SnackBarThemeData(
    //   backgroundColor: dark_green2,
    //   contentTextStyle: TextStyle(color: Colors.white),
    //   behavior: SnackBarBehavior.floating,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(50),
    //   ),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: dark_green3,
    //     elevation: 1,
    //   ),
    // ),
  );
}
