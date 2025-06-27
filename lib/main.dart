
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/app_packages.dart';


void main() {
  // GestureBinding.instance.resamplingEnabled = true;
  // WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyCustomThemes.lightTheme,
      darkTheme: MyCustomThemes.darkTheme,
      themeMode: ThemeMode.system,
      // debugShowCheckedModeBanner: false,
      // home: Screen1(), // dashboard
      home: MainNav(), // dashboard
      // home: Example(),
    );
  }
}
