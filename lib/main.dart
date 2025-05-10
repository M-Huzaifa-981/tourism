import 'package:flutter/material.dart';
import 'package:tourism/screens/around_me_screen.dart';
import 'package:tourism/screens/favorite_resorts_screen/fav_destination_screen.dart';
import 'package:tourism/screens/trending_resorts_screen.dart';
import 'main_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      home: DefaultTabController(
        length: 4,
        // child: FavDestinationScreen(),
        child: MainNav(),
      ),
    );
  }
}
