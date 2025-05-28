import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tourism/main_nav.dart';
import 'package:tourism/screens/welcome_screen.dart';
import 'package:tourism/utils/themes/themes.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyCustomThemes.lightTheme,
      darkTheme: MyCustomThemes.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(), // dashboard
    );
  }
}
