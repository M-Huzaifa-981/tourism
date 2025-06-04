import 'package:tourism/screens/welcome_screen.dart';
import '../utils/app_packages.dart';


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
      // home: WelcomeScreen(), // dashboard
      home: MainNav(), // dashboard
    );
  }
}
